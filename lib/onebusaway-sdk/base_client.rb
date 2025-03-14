# frozen_string_literal: true

module OnebusawaySDK
  # @private
  #
  # @abstract
  #
  class BaseClient
    # from whatwg fetch spec
    MAX_REDIRECTS = 20

    # rubocop:disable Style/MutableConstant
    PLATFORM_HEADERS = {
      "x-stainless-arch" => OnebusawaySDK::Util.arch,
      "x-stainless-lang" => "ruby",
      "x-stainless-os" => OnebusawaySDK::Util.os,
      "x-stainless-package-version" => OnebusawaySDK::VERSION,
      "x-stainless-runtime" => ::RUBY_ENGINE,
      "x-stainless-runtime-version" => ::RUBY_ENGINE_VERSION
    }
    # rubocop:enable Style/MutableConstant

    class << self
      # @private
      #
      # @param req [Hash{Symbol=>Object}]
      #
      # @raise [ArgumentError]
      #
      def validate!(req)
        keys = [:method, :path, :query, :headers, :body, :unwrap, :page, :stream, :model, :options]
        case req
        in Hash
          req.each_key do |k|
            unless keys.include?(k)
              raise ArgumentError.new("Request `req` keys must be one of #{keys}, got #{k.inspect}")
            end
          end
        else
          raise ArgumentError.new("Request `req` must be a Hash or RequestOptions, got #{req.inspect}")
        end
      end

      # @private
      #
      # @param status [Integer]
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      #
      # @return [Boolean]
      #
      def should_retry?(status, headers:)
        coerced = OnebusawaySDK::Util.coerce_boolean(headers["x-should-retry"])
        case [coerced, status]
        in [true | false, _]
          coerced
        in [_, 408 | 409 | 429 | (500..)]
          # retry on:
          # 408: timeouts
          # 409: locks
          # 429: rate limits
          # 500+: unknown errors
          true
        else
          false
        end
      end

      # @private
      #
      # @param request [Hash{Symbol=>Object}] .
      #
      #   @option request [Symbol] :method
      #
      #   @option request [URI::Generic] :url
      #
      #   @option request [Hash{String=>String}] :headers
      #
      #   @option request [Object] :body
      #
      #   @option request [Integer] :max_retries
      #
      #   @option request [Float] :timeout
      #
      # @param status [Integer]
      #
      # @param response_headers [Hash{String=>String}, Net::HTTPHeader]
      #
      # @return [Hash{Symbol=>Object}]
      #
      def follow_redirect(request, status:, response_headers:)
        method, url, headers = request.fetch_values(:method, :url, :headers)
        location =
          Kernel.then do
            URI.join(url, response_headers["location"])
          rescue ArgumentError
            message = "Server responded with status #{status} but no valid location header."
            raise OnebusawaySDK::APIConnectionError.new(url: url, message: message)
          end

        request = {**request, url: location}

        case [url.scheme, location.scheme]
        in ["https", "http"]
          message = "Tried to redirect to a insecure URL"
          raise OnebusawaySDK::APIConnectionError.new(url: url, message: message)
        else
          nil
        end

        # from whatwg fetch spec
        case [status, method]
        in [301 | 302, :post] | [303, _]
          drop = %w[content-encoding content-language content-length content-location content-type]
          request = {
            **request,
            method: method == :head ? :head : :get,
            headers: headers.except(*drop),
            body: nil
          }
        else
        end

        # from undici
        if OnebusawaySDK::Util.uri_origin(url) != OnebusawaySDK::Util.uri_origin(location)
          drop = %w[authorization cookie host proxy-authorization]
          request = {**request, headers: request.fetch(:headers).except(*drop)}
        end

        request
      end
    end

    # @private
    #
    # @return [OnebusawaySDK::PooledNetRequester]
    attr_accessor :requester

    # @private
    #
    # @param base_url [String]
    # @param timeout [Float]
    # @param max_retries [Integer]
    # @param initial_retry_delay [Float]
    # @param max_retry_delay [Float]
    # @param headers [Hash{String=>String, Integer, Array<String, Integer, nil>, nil}]
    # @param idempotency_header [String, nil]
    #
    def initialize(
      base_url:,
      timeout: 0.0,
      max_retries: 0,
      initial_retry_delay: 0.0,
      max_retry_delay: 0.0,
      headers: {},
      idempotency_header: nil
    )
      @requester = OnebusawaySDK::PooledNetRequester.new
      @headers = OnebusawaySDK::Util.normalized_headers(
        self.class::PLATFORM_HEADERS,
        {
          "accept" => "application/json",
          "content-type" => "application/json"
        },
        headers
      )
      @base_url = OnebusawaySDK::Util.parse_uri(base_url)
      @idempotency_header = idempotency_header&.to_s&.downcase
      @max_retries = max_retries
      @timeout = timeout
      @initial_retry_delay = initial_retry_delay
      @max_retry_delay = max_retry_delay
    end

    # @private
    #
    # @return [Hash{String=>String}]
    #
    private def auth_query = {}

    # @private
    #
    # @return [String]
    #
    private def generate_idempotency_key = "stainless-ruby-retry-#{SecureRandom.uuid}"

    # @private
    #
    # @param req [Hash{Symbol=>Object}] .
    #
    #   @option req [Symbol] :method
    #
    #   @option req [String, Array<String>] :path
    #
    #   @option req [Hash{String=>Array<String>, String, nil}, nil] :query
    #
    #   @option req [Hash{String=>String, Integer, Array<String, Integer, nil>, nil}, nil] :headers
    #
    #   @option req [Object, nil] :body
    #
    #   @option req [Symbol, nil] :unwrap
    #
    #   @option req [Class, nil] :page
    #
    #   @option req [Class, nil] :stream
    #
    #   @option req [OnebusawaySDK::Converter, Class, nil] :model
    #
    # @param opts [Hash{Symbol=>Object}] .
    #
    #   @option opts [String, nil] :idempotency_key
    #
    #   @option opts [Hash{String=>Array<String>, String, nil}, nil] :extra_query
    #
    #   @option opts [Hash{String=>String, nil}, nil] :extra_headers
    #
    #   @option opts [Hash{Symbol=>Object}, nil] :extra_body
    #
    #   @option opts [Integer, nil] :max_retries
    #
    #   @option opts [Float, nil] :timeout
    #
    # @return [Hash{Symbol=>Object}]
    #
    private def build_request(req, opts)
      method, uninterpolated_path = req.fetch_values(:method, :path)

      path = OnebusawaySDK::Util.interpolate_path(uninterpolated_path)

      query = OnebusawaySDK::Util.deep_merge(auth_query, req[:query].to_h, opts[:extra_query].to_h)

      headers = OnebusawaySDK::Util.normalized_headers(
        @headers,
        req[:headers].to_h,
        opts[:extra_headers].to_h
      )

      if @idempotency_header &&
         !headers.key?(@idempotency_header) &&
         !Net::HTTP::IDEMPOTENT_METHODS_.include?(method.to_s.upcase)
        headers[@idempotency_header] = opts.fetch(:idempotency_key) { generate_idempotency_key }
      end

      unless headers.key?("x-stainless-retry-count")
        headers["x-stainless-retry-count"] = "0"
      end

      timeout = opts.fetch(:timeout, @timeout).to_f.clamp((0..))
      unless headers.key?("x-stainless-read-timeout") || timeout.zero?
        headers["x-stainless-read-timeout"] = timeout.to_s
      end

      headers.reject! { |_, v| v.to_s.empty? }

      body =
        case method
        in :get | :head | :options | :trace
          nil
        else
          OnebusawaySDK::Util.deep_merge(*[req[:body], opts[:extra_body]].compact)
        end

      headers, encoded = OnebusawaySDK::Util.encode_content(headers, body)
      {
        method: method,
        url: OnebusawaySDK::Util.join_parsed_uri(@base_url, {**req, path: path, query: query}),
        headers: headers,
        body: encoded,
        max_retries: opts.fetch(:max_retries, @max_retries),
        timeout: timeout
      }
    end

    # @private
    #
    # @param headers [Hash{String=>String}]
    # @param retry_count [Integer]
    #
    # @return [Float]
    #
    private def retry_delay(headers, retry_count:)
      # Non-standard extension
      span = Float(headers["retry-after-ms"], exception: false)&.then { _1 / 1000 }
      return span if span

      retry_header = headers["retry-after"]
      return span if (span = Float(retry_header, exception: false))

      span = retry_header&.then do
        Time.httpdate(_1) - Time.now
      rescue ArgumentError
        nil
      end
      return span if span

      scale = retry_count**2
      jitter = 1 - (0.25 * rand)
      (@initial_retry_delay * scale * jitter).clamp(0, @max_retry_delay)
    end

    # @private
    #
    # @param request [Hash{Symbol=>Object}] .
    #
    #   @option request [Symbol] :method
    #
    #   @option request [URI::Generic] :url
    #
    #   @option request [Hash{String=>String}] :headers
    #
    #   @option request [Object] :body
    #
    #   @option request [Integer] :max_retries
    #
    #   @option request [Float] :timeout
    #
    # @param redirect_count [Integer]
    #
    # @param retry_count [Integer]
    #
    # @param send_retry_header [Boolean]
    #
    # @raise [OnebusawaySDK::APIError]
    # @return [Array(Integer, Net::HTTPResponse, Enumerable)]
    #
    private def send_request(request, redirect_count:, retry_count:, send_retry_header:)
      url, headers, max_retries, timeout = request.fetch_values(:url, :headers, :max_retries, :timeout)
      input = {**request.except(:timeout), deadline: OnebusawaySDK::Util.monotonic_secs + timeout}

      if send_retry_header
        headers["x-stainless-retry-count"] = retry_count.to_s
      end

      begin
        response, stream = @requester.execute(input)
        status = Integer(response.code)
      rescue OnebusawaySDK::APIConnectionError => e
        status = e
      end

      # normally we want to drain the response body and reuse the HTTP session by clearing the socket buffers
      # unless we hit a server error
      srv_fault = (500...).include?(status)

      case status
      in ..299
        [status, response, stream]
      in 300..399 if redirect_count >= self.class::MAX_REDIRECTS
        message = "Failed to complete the request within #{self.class::MAX_REDIRECTS} redirects."

        stream.each { next }
        raise OnebusawaySDK::APIConnectionError.new(url: url, message: message)
      in 300..399
        request = self.class.follow_redirect(request, status: status, response_headers: response)

        stream.each { next }
        send_request(
          request,
          redirect_count: redirect_count + 1,
          retry_count: retry_count,
          send_retry_header: send_retry_header
        )
      in OnebusawaySDK::APIConnectionError if retry_count >= max_retries
        raise status
      in (400..) if retry_count >= max_retries || !self.class.should_retry?(status, headers: response)
        decoded = OnebusawaySDK::Util.decode_content(response, stream: stream, suppress_error: true)

        if srv_fault
          OnebusawaySDK::Util.close_fused!(stream)
        else
          stream.each { next }
        end

        raise OnebusawaySDK::APIStatusError.for(
          url: url,
          status: status,
          body: decoded,
          request: nil,
          response: response
        )
      in (400..) | OnebusawaySDK::APIConnectionError
        delay = retry_delay(response, retry_count: retry_count)

        if srv_fault
          OnebusawaySDK::Util.close_fused!(stream)
        else
          stream&.each { next }
        end
        sleep(delay)

        send_request(
          request,
          redirect_count: redirect_count,
          retry_count: retry_count + 1,
          send_retry_header: send_retry_header
        )
      end
    end

    # Execute the request specified by `req`. This is the method that all resource
    #   methods call into.
    #
    # @param req [Hash{Symbol=>Object}] .
    #
    #   @option req [Symbol] :method
    #
    #   @option req [String, Array<String>] :path
    #
    #   @option req [Hash{String=>Array<String>, String, nil}, nil] :query
    #
    #   @option req [Hash{String=>String, Integer, Array<String, Integer, nil>, nil}, nil] :headers
    #
    #   @option req [Object, nil] :body
    #
    #   @option req [Symbol, nil] :unwrap
    #
    #   @option req [Class, nil] :page
    #
    #   @option req [Class, nil] :stream
    #
    #   @option req [OnebusawaySDK::Converter, Class, nil] :model
    #
    #   @option req [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :options
    #
    # @raise [OnebusawaySDK::APIError]
    # @return [Object]
    #
    def request(req)
      self.class.validate!(req)
      model = req.fetch(:model) { OnebusawaySDK::Unknown }
      opts = req[:options].to_h
      OnebusawaySDK::RequestOptions.validate!(opts)
      request = build_request(req.except(:options), opts)
      url = request.fetch(:url)

      # Don't send the current retry count in the headers if the caller modified the header defaults.
      send_retry_header = request.fetch(:headers)["x-stainless-retry-count"] == "0"
      status, response, stream = send_request(
        request,
        redirect_count: 0,
        retry_count: 0,
        send_retry_header: send_retry_header
      )

      decoded = OnebusawaySDK::Util.decode_content(response, stream: stream)
      case req
      in { stream: Class => st }
        st.new(model: model, url: url, status: status, response: response, messages: decoded)
      in { page: Class => page }
        page.new(client: self, req: req, headers: response, unwrapped: decoded)
      else
        unwrapped = OnebusawaySDK::Util.dig(decoded, req[:unwrap])
        OnebusawaySDK::Converter.coerce(model, unwrapped)
      end
    end

    # @return [String]
    #
    def inspect
      base_url = OnebusawaySDK::Util.unparse_uri(@base_url)
      "#<#{self.class.name}:0x#{object_id.to_s(16)} base_url=#{base_url} max_retries=#{@max_retries} timeout=#{@timeout}>"
    end
  end
end
