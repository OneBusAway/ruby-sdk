# typed: strong

module OnebusawaySDK
  module Models
    class VehiclesForAgencyListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # Specific time for querying the status (timestamp format)
      sig { returns(T.nilable(String)) }
      attr_reader :time

      sig { params(time: String).void }
      attr_writer :time

      sig do
        params(
          time: String,
          request_options: T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(time: nil, request_options: {})
      end

      sig { override.returns({time: String, request_options: OnebusawaySDK::RequestOptions}) }
      def to_hash
      end
    end
  end
end
