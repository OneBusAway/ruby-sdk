# typed: strong

module OnebusawaySDK
  module Models
    class VehiclesForAgencyListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(String)) }
      def time
      end

      sig { params(_: String).returns(String) }
      def time=(_)
      end

      sig do
        params(
          time: String,
          request_options: T.any(
            OnebusawaySDK::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        )
          .void
      end
      def initialize(time: nil, request_options: {})
      end

      sig { override.returns({time: String, request_options: OnebusawaySDK::RequestOptions}) }
      def to_hash
      end
    end
  end
end
