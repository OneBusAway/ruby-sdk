# frozen_string_literal: true

module OpenTransit
  module Resources
    class ReportProblemWithStop
      # Submit a user-generated problem report for a stop
      #
      # @overload retrieve(stop_id, code: nil, user_comment: nil, user_lat: nil, user_location_accuracy: nil, user_lon: nil, request_options: {})
      #
      # @param stop_id [String] The ID of the stop
      #
      # @param code [Symbol, OpenTransit::ReportProblemWithStopRetrieveParams::Code] A string code identifying the nature of the problem
      #
      # @param user_comment [String] Additional comment text supplied by the user describing the problem
      #
      # @param user_lat [Float] The reporting user’s current latitude
      #
      # @param user_location_accuracy [Float] The reporting user’s location accuracy, in meters
      #
      # @param user_lon [Float] The reporting user’s current longitude
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::ResponseWrapper]
      #
      # @see OpenTransit::Models::ReportProblemWithStopRetrieveParams
      def retrieve(stop_id, params = {})
        parsed, options = OpenTransit::ReportProblemWithStopRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/report-problem-with-stop/%1$s.json", stop_id],
          query: parsed.transform_keys(
            user_comment: "userComment",
            user_lat: "userLat",
            user_location_accuracy: "userLocationAccuracy",
            user_lon: "userLon"
          ),
          model: OpenTransit::ResponseWrapper,
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
