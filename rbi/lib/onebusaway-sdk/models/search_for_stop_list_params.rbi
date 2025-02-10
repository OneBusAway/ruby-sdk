# typed: strong

module OnebusawaySDK
  module Models
    class SearchForStopListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(String) }
      attr_accessor :input

      sig { returns(T.nilable(Integer)) }
      attr_reader :max_count

      sig { params(max_count: Integer).void }
      attr_writer :max_count

      sig do
        params(
          input: String,
          max_count: Integer,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(input:, max_count: nil, request_options: {})
      end

      sig do
        override.returns({input: String, max_count: Integer, request_options: OnebusawaySDK::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
