# frozen_string_literal: true

module Onebusaway
  class Error < StandardError
    # @!parse
    #   # @return [StandardError, nil]
    #   attr_reader :cause
  end

  class ConversionError < Onebusaway::Error
  end

  class APIError < Onebusaway::Error
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

  class APIConnectionError < Onebusaway::APIError
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

  class APITimeoutError < Onebusaway::APIConnectionError
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

  class APIStatusError < Onebusaway::APIError
    # @private
    #
    # @param url [URI::Generic]
    # @param status [Integer]
    # @param body [Object, nil]
    # @param request [nil]
    # @param response [nil]
    #
    # @return [Onebusaway::APIStatusError]
    #
    def self.for(url:, status:, body:, request:, response:)
      kwargs = {url: url, status: status, body: body, request: request, response: response}

      case status
      in 400
        Onebusaway::BadRequestError.new(**kwargs)
      in 401
        Onebusaway::AuthenticationError.new(**kwargs)
      in 403
        Onebusaway::PermissionDeniedError.new(**kwargs)
      in 404
        Onebusaway::NotFoundError.new(**kwargs)
      in 409
        Onebusaway::ConflictError.new(**kwargs)
      in 422
        Onebusaway::UnprocessableEntityError.new(**kwargs)
      in 429
        Onebusaway::RateLimitError.new(**kwargs)
      in (500..)
        Onebusaway::InternalServerError.new(**kwargs)
      else
        Onebusaway::APIStatusError.new(**kwargs)
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

  class BadRequestError < Onebusaway::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < Onebusaway::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < Onebusaway::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < Onebusaway::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < Onebusaway::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < Onebusaway::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < Onebusaway::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < Onebusaway::APIStatusError
    HTTP_STATUS = (500..)
  end
end
