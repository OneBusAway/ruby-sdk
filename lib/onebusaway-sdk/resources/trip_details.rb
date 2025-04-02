# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class TripDetails
      # Retrieve Trip Details
      #
      # @param trip_id [String] ID of the trip to retrieve details for.
      #
      # @param params [OnebusawaySDK::Models::TripDetailRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean] :include_schedule Whether to include the full schedule element in the tripDetails section
      #     (defaults to true).
      #
      #   @option params [Boolean] :include_status Whether to include the full status element in the tripDetails section (defaults
      #     to true).
      #
      #   @option params [Boolean] :include_trip Whether to include the full trip element in the references section (defaults to
      #     true).
      #
      #   @option params [Integer] :service_date Service date for the trip as Unix time in milliseconds (optional).
      #
      #   @option params [Integer] :time Time parameter to query the system at a specific time (optional).
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::TripDetailRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::TripDetailRetrieveParams
      def retrieve(trip_id, params = {})
        parsed, options = OnebusawaySDK::Models::TripDetailRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/trip-details/%1$s.json", trip_id],
          query: parsed,
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
