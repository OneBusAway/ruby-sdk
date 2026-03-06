# typed: strong

module OnebusawaySDK
  module Models
    class RouteRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::RouteRetrieveParams,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :route_id

      sig do
        params(
          route_id: String,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(route_id:, request_options: {})
      end

      sig do
        override.returns(
          { route_id: String, request_options: OnebusawaySDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
