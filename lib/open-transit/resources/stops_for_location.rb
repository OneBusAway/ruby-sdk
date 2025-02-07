# frozen_string_literal: true

module OpenTransit
  module Resources
    class StopsForLocation
      # stops-for-location
      #
      # @param params [OpenTransit::Models::StopsForLocationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Float] :lat
      #
      #   @option params [Float] :lon
      #
      #   @option params [Float] :lat_span An alternative to radius to set the search bounding box (optional)
      #
      #   @option params [Float] :lon_span An alternative to radius to set the search bounding box (optional)
      #
      #   @option params [String] :query A search query string to filter the results
      #
      #   @option params [Float] :radius The radius in meters to search within
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::StopsForLocationListResponse]
      #
      def list(params)
        parsed, options = OpenTransit::Models::StopsForLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/stops-for-location.json",
          query: parsed,
          model: OpenTransit::Models::StopsForLocationListResponse,
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
