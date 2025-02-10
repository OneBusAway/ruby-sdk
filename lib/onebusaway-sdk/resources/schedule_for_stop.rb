# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class ScheduleForStop
      # Get schedule for a specific stop
      #
      # @param stop_id [String] The stop id to request the schedule for, encoded directly in the URL
      #
      # @param params [OnebusawaySDK::Models::ScheduleForStopRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Date] :date The date for which you want to request a schedule in the format YYYY-MM-DD
      #     (optional, defaults to the current date)
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::ScheduleForStopRetrieveResponse]
      #
      def retrieve(stop_id, params = {})
        parsed, options = OnebusawaySDK::Models::ScheduleForStopRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/schedule-for-stop/%0s.json", stop_id],
          query: parsed,
          model: OnebusawaySDK::Models::ScheduleForStopRetrieveResponse,
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
