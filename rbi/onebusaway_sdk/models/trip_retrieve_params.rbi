# typed: strong

module OnebusawaySDK
  module Models
    class TripRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::TripRetrieveParams,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :trip_id

      sig do
        params(
          trip_id: String,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(trip_id:, request_options: {})
      end

      sig do
        override.returns(
          { trip_id: String, request_options: OnebusawaySDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
