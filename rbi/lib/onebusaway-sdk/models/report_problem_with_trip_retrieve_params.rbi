# typed: strong

module OnebusawaySDK
  module Models
    class ReportProblemWithTripRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(Symbol)) }
      attr_reader :code

      sig { params(code: Symbol).void }
      attr_writer :code

      sig { returns(T.nilable(Integer)) }
      attr_reader :service_date

      sig { params(service_date: Integer).void }
      attr_writer :service_date

      sig { returns(T.nilable(String)) }
      attr_reader :stop_id

      sig { params(stop_id: String).void }
      attr_writer :stop_id

      sig { returns(T.nilable(String)) }
      attr_reader :user_comment

      sig { params(user_comment: String).void }
      attr_writer :user_comment

      sig { returns(T.nilable(Float)) }
      attr_reader :user_lat

      sig { params(user_lat: Float).void }
      attr_writer :user_lat

      sig { returns(T.nilable(Float)) }
      attr_reader :user_location_accuracy

      sig { params(user_location_accuracy: Float).void }
      attr_writer :user_location_accuracy

      sig { returns(T.nilable(Float)) }
      attr_reader :user_lon

      sig { params(user_lon: Float).void }
      attr_writer :user_lon

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :user_on_vehicle

      sig { params(user_on_vehicle: T::Boolean).void }
      attr_writer :user_on_vehicle

      sig { returns(T.nilable(String)) }
      attr_reader :user_vehicle_number

      sig { params(user_vehicle_number: String).void }
      attr_writer :user_vehicle_number

      sig { returns(T.nilable(String)) }
      attr_reader :vehicle_id

      sig { params(vehicle_id: String).void }
      attr_writer :vehicle_id

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
        ).void
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
        override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
