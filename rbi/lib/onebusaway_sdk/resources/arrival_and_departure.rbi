# typed: strong

module OnebusawaySDK
  module Resources
    class ArrivalAndDeparture
      # arrival-and-departure-for-stop
      sig do
        params(
          stop_id: String,
          service_date: Integer,
          trip_id: String,
          stop_sequence: Integer,
          time: Integer,
          vehicle_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Internal::AnyHash))
        )
          .returns(OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse)
      end
      def retrieve(
        stop_id,
        service_date:,
        trip_id:,
        stop_sequence: nil,
        time: nil,
        vehicle_id: nil,
        request_options: {}
      )
      end

      # arrivals-and-departures-for-stop
      sig do
        params(
          stop_id: String,
          minutes_after: Integer,
          minutes_before: Integer,
          time: Time,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Internal::AnyHash))
        )
          .returns(OnebusawaySDK::Models::ArrivalAndDepartureListResponse)
      end
      def list(
        stop_id,
        # Include vehicles arriving or departing in the next n minutes.
        minutes_after: nil,
        # Include vehicles having arrived or departed in the previous n minutes.
        minutes_before: nil,
        # The specific time for querying the system status.
        time: nil,
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
