# typed: strong

module OnebusawaySDK
  module Models
    class ReportProblemWithTripRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # A string code identifying the nature of the problem
      sig { returns(T.nilable(OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::OrSymbol)) }
      def code
      end

      sig do
        params(_: OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::OrSymbol)
          .returns(OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::OrSymbol)
      end
      def code=(_)
      end

      # The service date of the trip
      sig { returns(T.nilable(Integer)) }
      def service_date
      end

      sig { params(_: Integer).returns(Integer) }
      def service_date=(_)
      end

      # A stop ID indicating where the user is experiencing the problem
      sig { returns(T.nilable(String)) }
      def stop_id
      end

      sig { params(_: String).returns(String) }
      def stop_id=(_)
      end

      # Additional comment text supplied by the user describing the problem
      sig { returns(T.nilable(String)) }
      def user_comment
      end

      sig { params(_: String).returns(String) }
      def user_comment=(_)
      end

      # The reporting user’s current latitude
      sig { returns(T.nilable(Float)) }
      def user_lat
      end

      sig { params(_: Float).returns(Float) }
      def user_lat=(_)
      end

      # The reporting user’s location accuracy, in meters
      sig { returns(T.nilable(Float)) }
      def user_location_accuracy
      end

      sig { params(_: Float).returns(Float) }
      def user_location_accuracy=(_)
      end

      # The reporting user’s current longitude
      sig { returns(T.nilable(Float)) }
      def user_lon
      end

      sig { params(_: Float).returns(Float) }
      def user_lon=(_)
      end

      # Indicator if the user is on the transit vehicle experiencing the problem
      sig { returns(T.nilable(T::Boolean)) }
      def user_on_vehicle
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def user_on_vehicle=(_)
      end

      # The vehicle number, as reported by the user
      sig { returns(T.nilable(String)) }
      def user_vehicle_number
      end

      sig { params(_: String).returns(String) }
      def user_vehicle_number=(_)
      end

      # The vehicle actively serving the trip
      sig { returns(T.nilable(String)) }
      def vehicle_id
      end

      sig { params(_: String).returns(String) }
      def vehicle_id=(_)
      end

      sig do
        params(
          code: OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::OrSymbol,
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
          .returns(T.attached_class)
      end
      def self.new(
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
              code: OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::OrSymbol,
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

      # A string code identifying the nature of the problem
      module Code
        extend OnebusawaySDK::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code) }
        OrSymbol =
          T.type_alias { T.any(Symbol, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol) }

        VEHICLE_NEVER_CAME =
          T.let(:vehicle_never_came, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol)
        VEHICLE_CAME_EARLY =
          T.let(:vehicle_came_early, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol)
        VEHICLE_CAME_LATE =
          T.let(:vehicle_came_late, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol)
        WRONG_HEADSIGN =
          T.let(:wrong_headsign, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol)
        VEHICLE_DOES_NOT_STOP_HERE =
          T.let(
            :vehicle_does_not_stop_here,
            OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol
          )
        OTHER = T.let(:other, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
