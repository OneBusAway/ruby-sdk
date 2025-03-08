# typed: strong

module OnebusawaySDK
  module Models
    class ArrivalAndDepartureRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(Integer) }
      def service_date
      end

      sig { params(_: Integer).returns(Integer) }
      def service_date=(_)
      end

      sig { returns(String) }
      def trip_id
      end

      sig { params(_: String).returns(String) }
      def trip_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def stop_sequence
      end

      sig { params(_: Integer).returns(Integer) }
      def stop_sequence=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def time
      end

      sig { params(_: Integer).returns(Integer) }
      def time=(_)
      end

      sig { returns(T.nilable(String)) }
      def vehicle_id
      end

      sig { params(_: String).returns(String) }
      def vehicle_id=(_)
      end

      sig do
        params(
          service_date: Integer,
          trip_id: String,
          stop_sequence: Integer,
          time: Integer,
          vehicle_id: String,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(service_date:, trip_id:, stop_sequence: nil, time: nil, vehicle_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
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
