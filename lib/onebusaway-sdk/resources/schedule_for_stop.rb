# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class ScheduleForStop
      # Get schedule for a specific stop
      #
      # @overload retrieve(stop_id, date: nil, request_options: {})
      #
      # @param stop_id [String]
      # @param date [Date]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::ScheduleForStopRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::ScheduleForStopRetrieveParams
      def retrieve(stop_id, params = {})
        parsed, options = OnebusawaySDK::Models::ScheduleForStopRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/schedule-for-stop/%1$s.json", stop_id],
          query: parsed,
          model: OnebusawaySDK::Models::ScheduleForStopRetrieveResponse,
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
