# frozen_string_literal: true

module OpenTransit
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
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::RoutesForLocationListResponse]
      #
      # @see OpenTransit::Models::RoutesForLocationListParams
      def list(params)
        parsed, options = OpenTransit::RoutesForLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/routes-for-location.json",
          query: parsed.transform_keys(lat_span: "latSpan", lon_span: "lonSpan"),
          model: OpenTransit::Models::RoutesForLocationListResponse,
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
