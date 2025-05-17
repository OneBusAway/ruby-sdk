# frozen_string_literal: true

module OpenTransit
  module Resources
    class ScheduleForRoute
      # Some parameter documentations has been truncated, see
      # {OpenTransit::Models::ScheduleForRouteRetrieveParams} for more details.
      #
      # Retrieve the full schedule for a route on a particular day
      #
      # @overload retrieve(route_id, date: nil, request_options: {})
      #
      # @param route_id [String] The route id to request the schedule for
      #
      # @param date [Date] The date for which you want to request a schedule in the format YYYY-MM-DD (opti
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::ScheduleForRouteRetrieveResponse]
      #
      # @see OpenTransit::Models::ScheduleForRouteRetrieveParams
      def retrieve(route_id, params = {})
        parsed, options = OpenTransit::ScheduleForRouteRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/schedule-for-route/%1$s.json", route_id],
          query: parsed,
          model: OpenTransit::Models::ScheduleForRouteRetrieveResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [OpenTransit::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
