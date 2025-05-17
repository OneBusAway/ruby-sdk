# typed: strong

module OpenTransit
  module Models
    class ReportProblemWithTripRetrieveParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::ReportProblemWithTripRetrieveParams,
            OpenTransit::Internal::AnyHash
          )
        end

      # A string code identifying the nature of the problem
      sig do
        returns(
          T.nilable(
            OpenTransit::ReportProblemWithTripRetrieveParams::Code::OrSymbol
          )
        )
      end
      attr_reader :code

      sig do
        params(
          code: OpenTransit::ReportProblemWithTripRetrieveParams::Code::OrSymbol
        ).void
      end
      attr_writer :code

      # The service date of the trip
      sig { returns(T.nilable(Integer)) }
      attr_reader :service_date

      sig { params(service_date: Integer).void }
      attr_writer :service_date

      # A stop ID indicating where the user is experiencing the problem
      sig { returns(T.nilable(String)) }
      attr_reader :stop_id

      sig { params(stop_id: String).void }
      attr_writer :stop_id

      # Additional comment text supplied by the user describing the problem
      sig { returns(T.nilable(String)) }
      attr_reader :user_comment

      sig { params(user_comment: String).void }
      attr_writer :user_comment

      # The reporting user’s current latitude
      sig { returns(T.nilable(Float)) }
      attr_reader :user_lat

      sig { params(user_lat: Float).void }
      attr_writer :user_lat

      # The reporting user’s location accuracy, in meters
      sig { returns(T.nilable(Float)) }
      attr_reader :user_location_accuracy

      sig { params(user_location_accuracy: Float).void }
      attr_writer :user_location_accuracy

      # The reporting user’s current longitude
      sig { returns(T.nilable(Float)) }
      attr_reader :user_lon

      sig { params(user_lon: Float).void }
      attr_writer :user_lon

      # Indicator if the user is on the transit vehicle experiencing the problem
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :user_on_vehicle

      sig { params(user_on_vehicle: T::Boolean).void }
      attr_writer :user_on_vehicle

      # The vehicle number, as reported by the user
      sig { returns(T.nilable(String)) }
      attr_reader :user_vehicle_number

      sig { params(user_vehicle_number: String).void }
      attr_writer :user_vehicle_number

      # The vehicle actively serving the trip
      sig { returns(T.nilable(String)) }
      attr_reader :vehicle_id

      sig { params(vehicle_id: String).void }
      attr_writer :vehicle_id

      sig do
        params(
          code:
            OpenTransit::ReportProblemWithTripRetrieveParams::Code::OrSymbol,
          service_date: Integer,
          stop_id: String,
          user_comment: String,
          user_lat: Float,
          user_location_accuracy: Float,
          user_lon: Float,
          user_on_vehicle: T::Boolean,
          user_vehicle_number: String,
          vehicle_id: String,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A string code identifying the nature of the problem
        code: nil,
        # The service date of the trip
        service_date: nil,
        # A stop ID indicating where the user is experiencing the problem
        stop_id: nil,
        # Additional comment text supplied by the user describing the problem
        user_comment: nil,
        # The reporting user’s current latitude
        user_lat: nil,
        # The reporting user’s location accuracy, in meters
        user_location_accuracy: nil,
        # The reporting user’s current longitude
        user_lon: nil,
        # Indicator if the user is on the transit vehicle experiencing the problem
        user_on_vehicle: nil,
        # The vehicle number, as reported by the user
        user_vehicle_number: nil,
        # The vehicle actively serving the trip
        vehicle_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            code:
              OpenTransit::ReportProblemWithTripRetrieveParams::Code::OrSymbol,
            service_date: Integer,
            stop_id: String,
            user_comment: String,
            user_lat: Float,
            user_location_accuracy: Float,
            user_lon: Float,
            user_on_vehicle: T::Boolean,
            user_vehicle_number: String,
            vehicle_id: String,
            request_options: OpenTransit::RequestOptions
          }
        )
      end
      def to_hash
      end

      # A string code identifying the nature of the problem
      module Code
        extend OpenTransit::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              OpenTransit::ReportProblemWithTripRetrieveParams::Code
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VEHICLE_NEVER_CAME =
          T.let(
            :vehicle_never_came,
            OpenTransit::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol
          )
        VEHICLE_CAME_EARLY =
          T.let(
            :vehicle_came_early,
            OpenTransit::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol
          )
        VEHICLE_CAME_LATE =
          T.let(
            :vehicle_came_late,
            OpenTransit::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol
          )
        WRONG_HEADSIGN =
          T.let(
            :wrong_headsign,
            OpenTransit::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol
          )
        VEHICLE_DOES_NOT_STOP_HERE =
          T.let(
            :vehicle_does_not_stop_here,
            OpenTransit::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            OpenTransit::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              OpenTransit::ReportProblemWithTripRetrieveParams::Code::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
