# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class TripDetails
      # Some parameter documentations has been truncated, see
      # {OnebusawaySDK::Models::TripDetailRetrieveParams} for more details.
      #
      # Retrieve Trip Details
      #
      # @overload retrieve(trip_id, include_schedule: nil, include_status: nil, include_trip: nil, service_date: nil, time: nil, request_options: {})
      #
      # @param trip_id [String] ID of the trip to retrieve details for.
      #
      # @param include_schedule [Boolean] Whether to include the full schedule element in the tripDetails section (default
      # ...
      #
      # @param include_status [Boolean] Whether to include the full status element in the tripDetails section (defaults
      # ...
      #
      # @param include_trip [Boolean] Whether to include the full trip element in the references section (defaults to
      # ...
      #
      # @param service_date [Integer] Service date for the trip as Unix time in milliseconds (optional).
      #
      # @param time [Integer] Time parameter to query the system at a specific time (optional).
      #
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::TripDetailRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::TripDetailRetrieveParams
      def retrieve(trip_id, params = {})
        parsed, options = OnebusawaySDK::Models::TripDetailRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/trip-details/%1$s.json", trip_id],
          query: parsed.transform_keys(
            include_schedule: "includeSchedule",
            include_status: "includeStatus",
            include_trip: "includeTrip",
            service_date: "serviceDate"
          ),
          model: OnebusawaySDK::Models::TripDetailRetrieveResponse,
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
