# frozen_string_literal: true

module OpenTransit
  module Resources
    class RoutesForLocation
      # routes-for-location
      #
      # @param params [OpenTransit::Models::RoutesForLocationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Float] :lat
      #
      #   @option params [Float] :lon
      #
      #   @option params [Float] :lat_span
      #
      #   @option params [Float] :lon_span
      #
      #   @option params [String] :query
      #
      #   @option params [Float] :radius
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::RoutesForLocationListResponse]
      #
      def list(params)
        parsed, options = OpenTransit::Models::RoutesForLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/routes-for-location.json",
          query: parsed,
          model: OpenTransit::Models::RoutesForLocationListResponse,
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
