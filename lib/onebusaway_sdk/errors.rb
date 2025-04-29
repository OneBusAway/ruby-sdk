# frozen_string_literal: true

module OnebusawaySDK
  module Errors
    class Error < StandardError
      # @!attribute cause
      #
      #   @return [StandardError, nil]
    end

    class ConversionError < OnebusawaySDK::Errors::Error
    end

    class APIError < OnebusawaySDK::Errors::Error
      # @return [URI::Generic]
      attr_accessor :url

      # @return [Integer, nil]
      attr_accessor :status

      # @return [Object, nil]
      attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
        @url = url
        @status = status
        @body = body
        @request = request
        @response = response
        super(message)
      end
    end

    class APIConnectionError < OnebusawaySDK::Errors::APIError
      # @!attribute status
      #
      #   @return [nil]

      # @!attribute body
      #
      #   @return [nil]

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
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

    class APITimeoutError < OnebusawaySDK::Errors::APIConnectionError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
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

    class APIStatusError < OnebusawaySDK::Errors::APIError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      #
      # @return [OnebusawaySDK::Errors::APIStatusError]
      def self.for(url:, status:, body:, request:, response:, message: nil)
        kwargs = {
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message
        }

        case status
        in 400
          OnebusawaySDK::Errors::BadRequestError.new(**kwargs)
        in 401
          OnebusawaySDK::Errors::AuthenticationError.new(**kwargs)
        in 403
          OnebusawaySDK::Errors::PermissionDeniedError.new(**kwargs)
        in 404
          OnebusawaySDK::Errors::NotFoundError.new(**kwargs)
        in 409
          OnebusawaySDK::Errors::ConflictError.new(**kwargs)
        in 422
          OnebusawaySDK::Errors::UnprocessableEntityError.new(**kwargs)
        in 429
          OnebusawaySDK::Errors::RateLimitError.new(**kwargs)
        in (500..)
          OnebusawaySDK::Errors::InternalServerError.new(**kwargs)
        else
          OnebusawaySDK::Errors::APIStatusError.new(**kwargs)
        end
      end

      # @!parse
      #   # @return [Integer]
      #   attr_accessor :status

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
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

    class BadRequestError < OnebusawaySDK::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < OnebusawaySDK::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < OnebusawaySDK::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < OnebusawaySDK::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < OnebusawaySDK::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < OnebusawaySDK::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < OnebusawaySDK::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < OnebusawaySDK::Errors::APIStatusError
      HTTP_STATUS = (500..)
    end
  end
end
