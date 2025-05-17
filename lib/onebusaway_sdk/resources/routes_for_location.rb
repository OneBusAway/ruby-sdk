# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class RoutesForLocation
      # routes-for-location
      #
      # @overload list(lat:, lon:, lat_span: nil, lon_span: nil, query: nil, radius: nil, request_options: {})
      #
      # @param lat [Float]
      # @param lon [Float]
      # @param lat_span [Float]
      # @param lon_span [Float]
      # @param query [String]
      # @param radius [Float]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::RoutesForLocationListResponse]
      #
      # @see OnebusawaySDK::Models::RoutesForLocationListParams
      def list(params)
        parsed, options = OnebusawaySDK::RoutesForLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/routes-for-location.json",
          query: parsed.transform_keys(lat_span: "latSpan", lon_span: "lonSpan"),
          model: OnebusawaySDK::Models::RoutesForLocationListResponse,
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
