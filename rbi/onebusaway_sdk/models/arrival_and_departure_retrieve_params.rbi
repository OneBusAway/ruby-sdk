# typed: strong

module OnebusawaySDK
  module Models
    class ArrivalAndDepartureRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::ArrivalAndDepartureRetrieveParams,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :service_date

      sig { returns(String) }
      attr_accessor :trip_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :stop_sequence

      sig { params(stop_sequence: Integer).void }
      attr_writer :stop_sequence

      sig { returns(T.nilable(Integer)) }
      attr_reader :time

      sig { params(time: Integer).void }
      attr_writer :time

      sig { returns(T.nilable(String)) }
      attr_reader :vehicle_id

      sig { params(vehicle_id: String).void }
      attr_writer :vehicle_id

      sig do
        params(
          service_date: Integer,
          trip_id: String,
          stop_sequence: Integer,
          time: Integer,
          vehicle_id: String,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        service_date:,
        trip_id:,
        stop_sequence: nil,
        time: nil,
        vehicle_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            service_date: Integer,
            trip_id: String,
            stop_sequence: Integer,
            time: Integer,
            vehicle_id: String,
            request_options: OnebusawaySDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
