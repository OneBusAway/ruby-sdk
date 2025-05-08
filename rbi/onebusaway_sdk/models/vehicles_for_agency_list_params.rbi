# typed: strong

module OnebusawaySDK
  module Models
    class VehiclesForAgencyListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, OnebusawaySDK::Internal::AnyHash) }

      # Specific time for querying the status (timestamp format)
      sig { returns(T.nilable(String)) }
      attr_reader :time

      sig { params(time: String).void }
      attr_writer :time

      sig do
        params(
          time: String,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specific time for querying the status (timestamp format)
        time: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { time: String, request_options: OnebusawaySDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
