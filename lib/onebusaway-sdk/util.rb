# frozen_string_literal: true

module OnebusawaySDK
  # rubocop:disable Metrics/ModuleLength

  # @private
  #
  module Util
    # @private
    #
    # @return [Float]
    #
    def self.monotonic_secs = Process.clock_gettime(Process::CLOCK_MONOTONIC)

    class << self
      # @private
      #
      # @return [String]
      #
      def arch
        case (arch = RbConfig::CONFIG["arch"])&.downcase
        in nil
          "unknown"
        in /aarch64|arm64/
          "arm64"
        in /x86_64/
          "x64"
        in /arm/
          "arm"
        else
          "other:#{arch}"
        end
      end

      # @private
      #
      # @return [String]
      #
      def os
        case (host = RbConfig::CONFIG["host_os"])&.downcase
        in nil
          "Unknown"
        in /linux/
          "Linux"
        in /darwin/
          "MacOS"
        in /freebsd/
          "FreeBSD"
        in /openbsd/
          "OpenBSD"
        in /mswin|mingw|cygwin|ucrt/
          "Windows"
        else
          "Other:#{host}"
        end
      end
    end

    class << self
      # @private
      #
      # @param input [Object]
      #
      # @return [Boolean, Object]
      #
      def primitive?(input)
        case input
        in true | false | Integer | Float | Symbol | String
          true
        else
          false
        end
      end

      # @private
      #
      # @param input [Object]
      #
      # @return [Boolean, Object]
      #
      def coerce_boolean(input)
        case input.is_a?(String) ? input.downcase : input
        in Numeric
          !input.zero?
        in "true"
          true
        in "false"
          false
        else
          input
        end
      end

      # @private
      #
      # @param input [Object]
      #
      # @raise [ArgumentError]
      # @return [Boolean, nil]
      #
      def coerce_boolean!(input)
        case coerce_boolean(input)
        in true | false | nil => coerced
          coerced
        else
          raise ArgumentError.new("Unable to coerce #{input.inspect} into boolean value")
        end
      end

      # @private
      #
      # @param input [Object]
      #
      # @return [Integer, Object]
      #
      def coerce_integer(input)
        case input
        in true
          1
        in false
          0
        else
          Integer(input, exception: false) || input
        end
      end

      # @private
      #
      # @param input [Object]
      #
      # @return [Float, Object]
      #
      def coerce_float(input)
        case input
        in true
          1.0
        in false
          0.0
        else
          Float(input, exception: false) || input
        end
      end

      # @private
      #
      # @param input [Object]
      #
      # @return [Hash{Object=>Object}, Object]
      #
      def coerce_hash(input)
        case input
        in NilClass | Array | Set | Enumerator
          input
        else
          input.respond_to?(:to_h) ? input.to_h : input
        end
      end
    end

    # Use this to indicate that a value should be explicitly removed from a data
    #   structure when using `OnebusawaySDK::Util.deep_merge`.
    #
    #   e.g. merging `{a: 1}` and `{a: OMIT}` should produce `{}`, where merging
    #   `{a: 1}` and `{}` would produce `{a: 1}`.
    OMIT = Object.new.freeze

    class << self
      # @private
      #
      # @param lhs [Object]
      # @param rhs [Object]
      # @param concat [Boolean]
      #
      # @return [Object]
      #
      private def deep_merge_lr(lhs, rhs, concat: false)
        case [lhs, rhs, concat]
        in [Hash, Hash, _]
          # rubocop:disable Style/YodaCondition
          rhs_cleaned = rhs.reject { |_, val| OMIT == val }
          lhs
            .reject { |key, _| OMIT == rhs[key] }
            .merge(rhs_cleaned) do |_, old_val, new_val|
              deep_merge_lr(old_val, new_val, concat: concat)
            end
          # rubocop:enable Style/YodaCondition
        in [Array, Array, true]
          lhs.concat(rhs)
        else
          rhs
        end
      end

      # @private
      #
      # Recursively merge one hash with another. If the values at a given key are not
      #   both hashes, just take the new value.
      #
      # @param values [Array<Object>]
      #
      # @param sentinel [Object, nil] the value to return if no values are provided.
      #
      # @param concat [Boolean] whether to merge sequences by concatenation.
      #
      # @return [Object]
      #
      def deep_merge(*values, sentinel: nil, concat: false)
        case values
        in [value, *values]
          values.reduce(value) do |acc, val|
            deep_merge_lr(acc, val, concat: concat)
          end
        else
          sentinel
        end
      end

      # @private
      #
      # @param data [Hash{Symbol=>Object}, Array<Object>, Object]
      # @param pick [Symbol, Integer, Array<Symbol, Integer>, nil]
      # @param sentinel [Object, nil]
      # @param blk [Proc, nil]
      #
      # @return [Object, nil]
      #
      def dig(data, pick, sentinel = nil, &blk)
        case [data, pick, blk]
        in [_, nil, nil]
          data
        in [Hash, Symbol, _] | [Array, Integer, _]
          blk.nil? ? data.fetch(pick, sentinel) : data.fetch(pick, &blk)
        in [Hash | Array, Array, _]
          pick.reduce(data) do |acc, key|
            case acc
            in Hash if acc.key?(key)
              acc.fetch(key)
            in Array if key.is_a?(Integer) && key < acc.length
              acc[key]
            else
              return blk.nil? ? sentinel : blk.call
            end
          end
        in _
          blk.nil? ? sentinel : blk.call
        end
      end
    end

    class << self
      # @private
      #
      # @param uri [URI::Generic]
      #
      # @return [String]
      #
      def uri_origin(uri)
        "#{uri.scheme}://#{uri.host}#{uri.port == uri.default_port ? '' : ":#{uri.port}"}"
      end

      # @private
      #
      # @param path [String, Array<String>]
      #
      # @return [String]
      #
      def interpolate_path(path)
        case path
        in String
          path
        in []
          ""
        in [String, *interpolations]
          encoded = interpolations.map { ERB::Util.url_encode(_1) }
          path.first % encoded
        end
      end
    end

    class << self
      # @private
      #
      # @param query [String, nil]
      #
      # @return [Hash{String=>Array<String>}]
      #
      def decode_query(query)
        CGI.parse(query.to_s)
      end

      # @private
      #
      # @param query [Hash{String=>Array<String>, String, nil}, nil]
      #
      # @return [String, nil]
      #
      def encode_query(query)
        query.to_h.empty? ? nil : URI.encode_www_form(query)
      end
    end

    class << self
      # @private
      #
      # @param url [URI::Generic, String]
      #
      # @return [Hash{Symbol=>String, Integer, nil}]
      #
      def parse_uri(url)
        parsed = URI::Generic.component.zip(URI.split(url)).to_h
        {**parsed, query: decode_query(parsed.fetch(:query))}
      end

      # @private
      #
      # @param parsed [Hash{Symbol=>String, Integer, nil}] .
      #
      #   @option parsed [String, nil] :scheme
      #
      #   @option parsed [String, nil] :host
      #
      #   @option parsed [Integer, nil] :port
      #
      #   @option parsed [String, nil] :path
      #
      #   @option parsed [Hash{String=>Array<String>}] :query
      #
      # @return [URI::Generic]
      #
      def unparse_uri(parsed)
        URI::Generic.build(**parsed, query: encode_query(parsed.fetch(:query)))
      end

      # @private
      #
      # @param lhs [Hash{Symbol=>String, Integer, nil}] .
      #
      #   @option lhs [String, nil] :scheme
      #
      #   @option lhs [String, nil] :host
      #
      #   @option lhs [Integer, nil] :port
      #
      #   @option lhs [String, nil] :path
      #
      #   @option lhs [Hash{String=>Array<String>}] :query
      #
      # @param rhs [Hash{Symbol=>String, Integer, nil}] .
      #
      #   @option rhs [String, nil] :scheme
      #
      #   @option rhs [String, nil] :host
      #
      #   @option rhs [Integer, nil] :port
      #
      #   @option rhs [String, nil] :path
      #
      #   @option rhs [Hash{String=>Array<String>}] :query
      #
      # @return [URI::Generic]
      #
      def join_parsed_uri(lhs, rhs)
        base_path, base_query = lhs.fetch_values(:path, :query)
        slashed = base_path.end_with?("/") ? base_path : "#{base_path}/"

        parsed_path, parsed_query = parse_uri(rhs.fetch(:path)).fetch_values(:path, :query)
        override = URI::Generic.build(**rhs.slice(:scheme, :host, :port), path: parsed_path)

        joined = URI.join(URI::Generic.build(lhs.except(:path, :query)), slashed, override)
        query = deep_merge(
          joined.path == base_path ? base_query : {},
          parsed_query,
          rhs[:query].to_h,
          concat: true
        )

        joined.query = encode_query(query)
        joined
      end
    end

    class << self
      # @private
      #
      # @param headers [Hash{String=>String, Integer, Array<String, Integer, nil>, nil}]
      #
      # @return [Hash{String=>String}]
      #
      def normalized_headers(*headers)
        {}.merge(*headers.compact).to_h do |key, val|
          case val
          in Array
            val.map { _1.to_s.strip }.join(", ")
          else
            val&.to_s&.strip
          end
          [key.downcase, val]
        end
      end
    end

    class << self
      # @private
      #
      # @param io [StringIO]
      # @param boundary [String]
      # @param key [Symbol, String]
      # @param val [Object]
      #
      private def encode_multipart_formdata(io, boundary:, key:, val:)
        io << "--#{boundary}\r\n"
        io << "Content-Disposition: form-data"
        unless key.nil?
          name = ERB::Util.url_encode(key.to_s)
          io << "; name=\"#{name}\""
        end
        if val.is_a?(IO)
          filename = ERB::Util.url_encode(File.basename(val.to_path))
          io << "; filename=\"#{filename}\""
        end
        io << "\r\n"
        case val
        in IO | StringIO
          io << "Content-Type: application/octet-stream\r\n\r\n"
          IO.copy_stream(val, io)
        in String
          io << "Content-Type: application/octet-stream\r\n\r\n"
          io << val.to_s
        in true | false | Integer | Float | Symbol
          io << "Content-Type: text/plain\r\n\r\n"
          io << val.to_s
        else
          io << "Content-Type: application/json\r\n\r\n"
          io << JSON.fast_generate(val)
        end
        io << "\r\n"
      end

      # @private
      #
      # @param headers [Hash{String=>String}]
      # @param body [Object]
      #
      # @return [Object]
      #
      def encode_content(headers, body)
        content_type = headers["content-type"]
        case [content_type, body]
        in ["application/json", Hash | Array]
          [headers, JSON.fast_generate(body)]
        in [%r{^multipart/form-data}, Hash | IO | StringIO]
          boundary = SecureRandom.urlsafe_base64(60)
          strio = StringIO.new.tap do |io|
            case body
            in Hash
              body.each do |key, val|
                case val
                in Array if val.all? { primitive?(_1) }
                  val.each do |v|
                    encode_multipart_formdata(io, boundary: boundary, key: key, val: v)
                  end
                else
                  encode_multipart_formdata(io, boundary: boundary, key: key, val: val)
                end
              end
            else
              encode_multipart_formdata(io, boundary: boundary, key: nil, val: body)
            end
            io << "--#{boundary}--\r\n"
            io.rewind
          end
          headers = {
            **headers,
            "content-type" => "#{content_type}; boundary=#{boundary}",
            "transfer-encoding" => "chunked"
          }
          [headers, strio]
        in [_, StringIO]
          [headers, body.string]
        in [_, IO]
          headers = {**headers, "transfer-encoding" => "chunked"}
          [headers, body]
        else
          [headers, body]
        end
      end

      # @private
      #
      # @param headers [Hash{String=>String}, Net::HTTPHeader]
      # @param stream [Enumerable]
      # @param suppress_error [Boolean]
      #
      # @raise [JSON::ParserError]
      # @return [Object]
      #
      def decode_content(headers, stream:, suppress_error: false)
        case headers["content-type"]
        in %r{^text/event-stream}
          lines = enum_lines(stream)
          parse_sse(lines)
        in %r{^application/json}
          json = stream.to_a.join
          begin
            JSON.parse(json, symbolize_names: true)
          rescue JSON::ParserError => e
            raise e unless suppress_error
            json
          end
        in %r{^text/}
          stream.to_a.join
        else
          # TODO: parsing other response types
          StringIO.new(stream.to_a.join)
        end
      end
    end

    class << self
      # @private
      #
      # https://doc.rust-lang.org/std/iter/trait.FusedIterator.html
      #
      # @param enum [Enumerable]
      # @param close [Proc]
      #
      # @return [Enumerable]
      #
      def fused_enum(enum, &close)
        fused = false
        iter = Enumerator.new do |y|
          next if fused

          fused = true
          loop { y << enum.next }
        ensure
          close&.call
          close = nil
        end

        iter.define_singleton_method(:rewind) do
          fused = true
          self
        end
        iter
      end

      # @private
      #
      # @param enum [Enumerable, nil]
      #
      def close_fused!(enum)
        return unless enum.is_a?(Enumerator)

        # rubocop:disable Lint/UnreachableLoop
        enum.rewind.each { break }
        # rubocop:enable Lint/UnreachableLoop
      end

      # @private
      #
      # @param enum [Enumerable, nil]
      # @param blk [Proc]
      #
      def chain_fused(enum, &blk)
        iter = Enumerator.new { blk.call(_1) }
        fused_enum(iter) { close_fused!(enum) }
      end
    end

    class << self
      # @private
      #
      # @param enum [Enumerable]
      #
      # @return [Enumerable]
      #
      def enum_lines(enum)
        chain_fused(enum) do |y|
          buffer = String.new
          enum.each do |row|
            buffer << row
            while (idx = buffer.index("\n"))
              y << buffer.slice!(..idx)
            end
          end
          y << buffer unless buffer.empty?
        end
      end

      # @private
      #
      # https://html.spec.whatwg.org/multipage/server-sent-events.html#parsing-an-event-stream
      #
      # @param lines [Enumerable]
      #
      # @return [Hash{Symbol=>Object}]
      #
      def parse_sse(lines)
        chain_fused(lines) do |y|
          blank = {event: nil, data: nil, id: nil, retry: nil}
          current = {}

          lines.each do |line|
            case line.strip
            in ""
              next if current.empty?
              y << {**blank, **current}
              current = {}
            in /^:/
              next
            in /^([^:]+):\s?(.*)$/
              _, field, value = Regexp.last_match.to_a
              case field
              in "event"
                current.merge!(event: value)
              in "data"
                (current[:data] ||= String.new) << value << "\n"
              in "id" unless value.include?("\0")
                current.merge!(id: value)
              in "retry" if /^\d+$/ =~ value
                current.merge!(retry: Integer(value))
              else
              end
            else
            end
          end

          y << {**blank, **current} unless current.empty?
        end
      end
    end
  end

  # rubocop:enable Metrics/ModuleLength
end
