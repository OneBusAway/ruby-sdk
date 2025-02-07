# frozen_string_literal: true

module Onebusaway
  module Resources
    class TripsForLocation
      # Retrieve trips for a given location
      #
      # @param params [Onebusaway::Models::TripsForLocationListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Float] :lat The latitude coordinate of the search center
      #
      #   @option params [Float] :lat_span Latitude span of the search bounding box
      #
      #   @option params [Float] :lon The longitude coordinate of the search center
      #
      #   @option params [Float] :lon_span Longitude span of the search bounding box
      #
      #   @option params [Boolean] :include_schedule Whether to include full schedule elements in the tripDetails section. Defaults
      #     to false.
      #
      #   @option params [Boolean] :include_trip Whether to include full trip elements in the references section. Defaults to
      #     false.
      #
      #   @option params [Integer] :time Specific time for the query. Defaults to the current time.
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::TripsForLocationListResponse]
      #
      def list(params)
        parsed, options = Onebusaway::Models::TripsForLocationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "api/where/trips-for-location.json",
          query: parsed,
          model: Onebusaway::Models::TripsForLocationListResponse,
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
