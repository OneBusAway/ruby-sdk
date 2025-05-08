# frozen_string_literal: true

module OnebusawaySDK
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
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::StopsForLocationListResponse]
      #
      # @see OnebusawaySDK::Models::StopsForLocationListParams
      def list(params)
        parsed, options = OnebusawaySDK::StopsForLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/stops-for-location.json",
          query: parsed.transform_keys(lat_span: "latSpan", lon_span: "lonSpan"),
          model: OnebusawaySDK::Models::StopsForLocationListResponse,
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
