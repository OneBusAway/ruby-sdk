# typed: strong

module OpenTransit
  class Error < StandardError
    sig { returns(T.nilable(StandardError)) }
    attr_reader :cause
  end

  class ConversionError < OpenTransit::Error
  end

  class APIError < OpenTransit::Error
    sig { returns(URI::Generic) }
    attr_reader :url

    sig { returns(T.nilable(Integer)) }
    attr_reader :status

    sig { returns(T.nilable(T.anything)) }
    attr_reader :body

    sig do
      params(
        url: URI::Generic,
        status: T.nilable(Integer),
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
    end
  end

  class APIConnectionError < OpenTransit::APIError
    sig { void }
    attr_reader :status

    sig { void }
    attr_reader :body

    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: "Connection error.")
    end
  end

  class APITimeoutError < OpenTransit::APIConnectionError
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: "Request timed out.")
    end
  end

  class APIStatusError < OpenTransit::APIError
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass
      ).returns(T.attached_class)
    end
    def self.for(url:, status:, body:, request:, response:)
    end

    sig { returns(Integer) }
    attr_reader :status

    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      ).void
    end
    def initialize(url:, status:, body:, request:, response:, message: nil)
    end
  end

  class BadRequestError < OpenTransit::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < OpenTransit::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < OpenTransit::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < OpenTransit::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < OpenTransit::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < OpenTransit::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < OpenTransit::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < OpenTransit::APIStatusError
    HTTP_STATUS = T.let((500..), T::Range[Integer])
  end
end
