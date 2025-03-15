# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class ReportProblemWithStop
      # Submit a user-generated problem report for a stop
      #
      # @param stop_id [String] The ID of the stop
      #
      # @param params [OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code] :code A string code identifying the nature of the problem
      #
      #   @option params [String] :user_comment Additional comment text supplied by the user describing the problem
      #
      #   @option params [Float] :user_lat The reporting user’s current latitude
      #
      #   @option params [Float] :user_location_accuracy The reporting user’s location accuracy, in meters
      #
      #   @option params [Float] :user_lon The reporting user’s current longitude
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::ResponseWrapper]
      def retrieve(stop_id, params = {})
        parsed, options = OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/report-problem-with-stop/%0s.json", stop_id],
          query: parsed,
          model: OnebusawaySDK::Models::ResponseWrapper,
          options: options
        )
      end

      # @param client [OnebusawaySDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
