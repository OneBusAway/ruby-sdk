# frozen_string_literal: true

module OpenTransit
  module Resources
    class ScheduleForStop
      # Get schedule for a specific stop
      #
      # @param stop_id [String] The stop id to request the schedule for, encoded directly in the URL
      #
      # @param params [OpenTransit::Models::ScheduleForStopRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Date] :date The date for which you want to request a schedule in the format YYYY-MM-DD
      #     (optional, defaults to the current date)
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::ScheduleForStopRetrieveResponse]
      #
      def retrieve(stop_id, params = {})
        parsed, options = OpenTransit::Models::ScheduleForStopRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/schedule-for-stop/%0s.json", stop_id],
          query: parsed,
          model: OpenTransit::Models::ScheduleForStopRetrieveResponse,
          options: options
        )
      end

      # @param client [OpenTransit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
