# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class RoutesForLocation
      # routes-for-location
      #
      # @param params [OnebusawaySDK::Models::RoutesForLocationListParams, Hash{Symbol=>Object}] .
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
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::RoutesForLocationListResponse]
      #
      # @see OnebusawaySDK::Models::RoutesForLocationListParams
      def list(params)
        parsed, options = OnebusawaySDK::Models::RoutesForLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/routes-for-location.json",
          query: parsed,
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
