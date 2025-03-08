# typed: strong

module OnebusawaySDK
  module Models
    class ReportProblemWithTripRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(Symbol)) }
      def code
      end

      sig { params(_: Symbol).returns(Symbol) }
      def code=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def service_date
      end

      sig { params(_: Integer).returns(Integer) }
      def service_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def stop_id
      end

      sig { params(_: String).returns(String) }
      def stop_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def user_comment
      end

      sig { params(_: String).returns(String) }
      def user_comment=(_)
      end

      sig { returns(T.nilable(Float)) }
      def user_lat
      end

      sig { params(_: Float).returns(Float) }
      def user_lat=(_)
      end

      sig { returns(T.nilable(Float)) }
      def user_location_accuracy
      end

      sig { params(_: Float).returns(Float) }
      def user_location_accuracy=(_)
      end

      sig { returns(T.nilable(Float)) }
      def user_lon
      end

      sig { params(_: Float).returns(Float) }
      def user_lon=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def user_on_vehicle
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def user_on_vehicle=(_)
      end

      sig { returns(T.nilable(String)) }
      def user_vehicle_number
      end

      sig { params(_: String).returns(String) }
      def user_vehicle_number=(_)
      end

      sig { returns(T.nilable(String)) }
      def vehicle_id
      end

      sig { params(_: String).returns(String) }
      def vehicle_id=(_)
      end

      sig do
        params(
          code: Symbol,
          service_date: Integer,
          stop_id: String,
          user_comment: String,
          user_lat: Float,
          user_location_accuracy: Float,
          user_lon: Float,
          user_on_vehicle: T::Boolean,
          user_vehicle_number: String,
          vehicle_id: String,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        code: nil,
        service_date: nil,
        stop_id: nil,
        user_comment: nil,
        user_lat: nil,
        user_location_accuracy: nil,
        user_lon: nil,
        user_on_vehicle: nil,
        user_vehicle_number: nil,
        vehicle_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              code: Symbol,
              service_date: Integer,
              stop_id: String,
              user_comment: String,
              user_lat: Float,
              user_location_accuracy: Float,
              user_lon: Float,
              user_on_vehicle: T::Boolean,
              user_vehicle_number: String,
              vehicle_id: String,
              request_options: OnebusawaySDK::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Code < OnebusawaySDK::Enum
        abstract!

        VEHICLE_NEVER_CAME = :vehicle_never_came
        VEHICLE_CAME_EARLY = :vehicle_came_early
        VEHICLE_CAME_LATE = :vehicle_came_late
        WRONG_HEADSIGN = :wrong_headsign
        VEHICLE_DOES_NOT_STOP_HERE = :vehicle_does_not_stop_here
        OTHER = :other

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
