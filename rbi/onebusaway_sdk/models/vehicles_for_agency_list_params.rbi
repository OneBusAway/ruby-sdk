# typed: strong

module OnebusawaySDK
  module Models
    class VehiclesForAgencyListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::VehiclesForAgencyListParams,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :agency_id

      # Specific time for querying the status (timestamp format)
      sig { returns(T.nilable(String)) }
      attr_reader :time

      sig { params(time: String).void }
      attr_writer :time

      sig do
        params(
          agency_id: String,
          time: String,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        agency_id:,
        # Specific time for querying the status (timestamp format)
        time: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            agency_id: String,
            time: String,
            request_options: OnebusawaySDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
