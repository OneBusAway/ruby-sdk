# frozen_string_literal: true

module OnebusawaySDK
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < OnebusawaySDK::Error
  end

  class APIError < OnebusawaySDK::Error
    # @return [URI::Generic]
    attr_reader :url

    # @return [Integer, nil]
    attr_reader :status

    # @return [Object, nil]
    attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer, nil]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
      @url = url
      @status = status
      @body = body
      @request = request
      @response = response
      super(message)
    end
  end

  class APIConnectionError < OnebusawaySDK::APIError
    # @!parse
    #   # @return [nil]
    #   attr_reader :status

    # @!parse
    #   # @return [nil]
    #   attr_reader :body

    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Connection error."
    )
      super
    end
  end

  class APITimeoutError < OnebusawaySDK::APIConnectionError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [nil]
    # @param body [nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(
      url:,
      status: nil,
      body: nil,
      request: nil,
      response: nil,
      message: "Request timed out."
    )
      super
    end
  end

  class APIStatusError < OnebusawaySDK::APIError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    # @return [OnebusawaySDK::APIStatusError]
    #
    def self.for(url:, status:, body:, request:, response:, message: nil)
      kwargs = {url: url, status: status, body: body, request: request, response: response, message: message}

      case status
      in 400
        OnebusawaySDK::BadRequestError.new(**kwargs)
      in 401
        OnebusawaySDK::AuthenticationError.new(**kwargs)
      in 403
        OnebusawaySDK::PermissionDeniedError.new(**kwargs)
      in 404
        OnebusawaySDK::NotFoundError.new(**kwargs)
      in 409
        OnebusawaySDK::ConflictError.new(**kwargs)
      in 422
        OnebusawaySDK::UnprocessableEntityError.new(**kwargs)
      in 429
        OnebusawaySDK::RateLimitError.new(**kwargs)
      in (500..)
        OnebusawaySDK::InternalServerError.new(**kwargs)
      else
        OnebusawaySDK::APIStatusError.new(**kwargs)
      end
    end

    # @!parse
    #   # @return [Integer]
    #   attr_reader :status

    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    # @param message [String, nil]
    #
    def initialize(url:, status:, body:, request:, response:, message: nil)
      message ||= {url: url.to_s, status: status, body: body}
      super(
        url: url,
        status: status,
        body: body,
        request: request,
        response: response,
        message: message&.to_s
      )
    end
  end

  class BadRequestError < OnebusawaySDK::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < OnebusawaySDK::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < OnebusawaySDK::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < OnebusawaySDK::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < OnebusawaySDK::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < OnebusawaySDK::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < OnebusawaySDK::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < OnebusawaySDK::APIStatusError
    HTTP_STATUS = (500..)
  end
end
