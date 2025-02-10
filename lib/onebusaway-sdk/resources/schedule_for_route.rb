# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class ScheduleForRoute
      # Retrieve the full schedule for a route on a particular day
      #
      # @param route_id [String] The route id to request the schedule for
      #
      # @param params [OnebusawaySDK::Models::ScheduleForRouteRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Date] :date The date for which you want to request a schedule in the format YYYY-MM-DD
      #     (optional, defaults to current date)
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse]
      #
      def retrieve(route_id, params = {})
        parsed, options = OnebusawaySDK::Models::ScheduleForRouteRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/schedule-for-route/%0s.json", route_id],
          query: parsed,
          model: OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse,
          options: options
        )
      end

      # @param client [OnebusawaySDK::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
