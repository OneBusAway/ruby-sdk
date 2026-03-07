# typed: strong

module OnebusawaySDK
  module Models
    class StopRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::StopRetrieveParams,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :stop_id

      sig do
        params(
          stop_id: String,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(stop_id:, request_options: {})
      end

      sig do
        override.returns(
          { stop_id: String, request_options: OnebusawaySDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
