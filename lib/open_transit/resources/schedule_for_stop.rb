# frozen_string_literal: true

module OpenTransit
  module Resources
    class ScheduleForStop
      # Some parameter documentations has been truncated, see
      # {OpenTransit::Models::ScheduleForStopRetrieveParams} for more details.
      #
      # Get schedule for a specific stop
      #
      # @overload retrieve(stop_id, date: nil, request_options: {})
      #
      # @param stop_id [String] The stop id to request the schedule for, encoded directly in the URL
      #
      # @param date [Date] The date for which you want to request a schedule in the format YYYY-MM-DD (opti
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::ScheduleForStopRetrieveResponse]
      #
      # @see OpenTransit::Models::ScheduleForStopRetrieveParams
      def retrieve(stop_id, params = {})
        parsed, options = OpenTransit::ScheduleForStopRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/schedule-for-stop/%1$s.json", stop_id],
          query: parsed,
          model: OpenTransit::Models::ScheduleForStopRetrieveResponse,
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
