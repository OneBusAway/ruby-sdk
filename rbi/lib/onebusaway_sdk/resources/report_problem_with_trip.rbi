# typed: strong

module OnebusawaySDK
  module Resources
    class ReportProblemWithTrip
      # Submit a user-generated problem report for a particular trip.
      sig do
        params(
          trip_id: String,
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
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Util::AnyHash))
        )
          .returns(OnebusawaySDK::Models::ResponseWrapper)
      end
      def retrieve(
        # The ID of the trip
        trip_id,
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

      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
