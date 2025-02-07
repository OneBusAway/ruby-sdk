# frozen_string_literal: true

module Onebusaway
  module Resources
    class ReportProblemWithStop
      # Submit a user-generated problem report for a stop
      #
      # @param stop_id [String] The ID of the stop
      #
      # @param params [Onebusaway::Models::ReportProblemWithStopRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Onebusaway::Models::ReportProblemWithStopRetrieveParams::Code] :code A string code identifying the nature of the problem
      #
      #   @option params [String] :user_comment Additional comment text supplied by the user describing the problem
      #
      #   @option params [Float] :user_lat The reporting user’s current latitude
      #
      #   @option params [Float] :user_location_accuracy The reporting user’s location accuracy, in meters
      #
      #   @option params [Float] :user_lon The reporting user’s current longitude
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::ResponseWrapper]
      #
      def retrieve(stop_id, params = {})
        parsed, options = Onebusaway::Models::ReportProblemWithStopRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/report-problem-with-stop/%0s.json", stop_id],
          query: parsed,
          model: Onebusaway::Models::ResponseWrapper,
          options: options
        )
      end

      # @param client [Onebusaway::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
