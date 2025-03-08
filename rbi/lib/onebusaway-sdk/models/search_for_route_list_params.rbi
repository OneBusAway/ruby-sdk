# typed: strong

module OnebusawaySDK
  module Models
    class SearchForRouteListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(String) }
      def input
      end

      sig { params(_: String).returns(String) }
      def input=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def max_count
      end

      sig { params(_: Integer).returns(Integer) }
      def max_count=(_)
      end

      sig do
        params(
          input: String,
          max_count: Integer,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(input:, max_count: nil, request_options: {})
      end

      sig do
        override.returns({input: String, max_count: Integer, request_options: OnebusawaySDK::RequestOptions})
      end
      def to_hash
      end
    end
  end
end
