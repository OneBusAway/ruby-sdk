# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class ArrivalAndDeparture
      # arrival-and-departure-for-stop
      #
      # @overload retrieve(stop_id, service_date:, trip_id:, stop_sequence: nil, time: nil, vehicle_id: nil, request_options: {})
      #
      # @param stop_id [String]
      # @param service_date [Integer]
      # @param trip_id [String]
      # @param stop_sequence [Integer]
      # @param time [Integer]
      # @param vehicle_id [String]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::ArrivalAndDepartureRetrieveParams
      def retrieve(stop_id, params)
        parsed, options = OnebusawaySDK::Models::ArrivalAndDepartureRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/arrival-and-departure-for-stop/%1$s.json", stop_id],
          query: parsed.transform_keys(
            service_date: :serviceDate,
            trip_id: :tripId,
            stop_sequence: :stopSequence,
            vehicle_id: :vehicleId
          ),
          model: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse,
          options: options
        )
      end

      # arrivals-and-departures-for-stop
      #
      # @overload list(stop_id, minutes_after: nil, minutes_before: nil, time: nil, request_options: {})
      #
      # @param stop_id [String]
      # @param minutes_after [Integer]
      # @param minutes_before [Integer]
      # @param time [Time]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::ArrivalAndDepartureListResponse]
      #
      # @see OnebusawaySDK::Models::ArrivalAndDepartureListParams
      def list(stop_id, params = {})
        parsed, options = OnebusawaySDK::Models::ArrivalAndDepartureListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/arrivals-and-departures-for-stop/%1$s.json", stop_id],
          query: parsed.transform_keys(minutes_after: :minutesAfter, minutes_before: :minutesBefore),
          model: OnebusawaySDK::Models::ArrivalAndDepartureListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [OnebusawaySDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
