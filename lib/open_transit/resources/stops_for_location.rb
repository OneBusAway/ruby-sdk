# frozen_string_literal: true

module OpenTransit
  module Resources
    class StopsForLocation
      # stops-for-location
      #
      # @overload list(lat:, lon:, lat_span: nil, lon_span: nil, query: nil, radius: nil, request_options: {})
      #
      # @param lat [Float]
      #
      # @param lon [Float]
      #
      # @param lat_span [Float] An alternative to radius to set the search bounding box (optional)
      #
      # @param lon_span [Float] An alternative to radius to set the search bounding box (optional)
      #
      # @param query [String] A search query string to filter the results
      #
      # @param radius [Float] The radius in meters to search within
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::StopsForLocationListResponse]
      #
      # @see OpenTransit::Models::StopsForLocationListParams
      def list(params)
        parsed, options = OpenTransit::StopsForLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/stops-for-location.json",
          query: parsed.transform_keys(lat_span: "latSpan", lon_span: "lonSpan"),
          model: OpenTransit::Models::StopsForLocationListResponse,
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
