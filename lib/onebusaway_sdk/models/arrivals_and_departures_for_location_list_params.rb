# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ArrivalsAndDeparturesForLocation#list
    class ArrivalsAndDeparturesForLocationListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute lat
      #   The latitude coordinate of the search center.
      #
      #   @return [Float]
      required :lat, Float

      # @!attribute lon
      #   The longitude coordinate of the search center.
      #
      #   @return [Float]
      required :lon, Float

      # @!attribute empty_returns_not_found
      #   If true, returns a 404 Not Found error instead of an empty result.
      #
      #   @return [Boolean, nil]
      optional :empty_returns_not_found, OnebusawaySDK::Internal::Type::Boolean

      # @!attribute lat_span
      #   Sets the latitude limits of the search bounding box.
      #
      #   @return [Float, nil]
      optional :lat_span, Float

      # @!attribute lon_span
      #   Sets the longitude limits of the search bounding box.
      #
      #   @return [Float, nil]
      optional :lon_span, Float

      # @!attribute max_count
      #   The max size of the list of nearby stops and arrivals to return. Defaults to
      #   250, max 1000.
      #
      #   @return [Integer, nil]
      optional :max_count, Integer

      # @!attribute minutes_after
      #   Include arrivals and departures this many minutes after the query time.
      #
      #   @return [Integer, nil]
      optional :minutes_after, Integer

      # @!attribute minutes_before
      #   Include arrivals and departures this many minutes before the query time.
      #
      #   @return [Integer, nil]
      optional :minutes_before, Integer

      # @!attribute radius
      #   The search radius in meters.
      #
      #   @return [Float, nil]
      optional :radius, Float

      # @!attribute route_type
      #   Optional list of GTFS routeTypes to filter by (comma delimited) e.g. "1,2,3".
      #
      #   @return [String, nil]
      optional :route_type, String

      # @!attribute time
      #   By default, returns the status right now. Can be queried at a specific time
      #   (milliseconds since epoch) for testing.
      #
      #   @return [Integer, nil]
      optional :time, Integer

      # @!method initialize(lat:, lon:, empty_returns_not_found: nil, lat_span: nil, lon_span: nil, max_count: nil, minutes_after: nil, minutes_before: nil, radius: nil, route_type: nil, time: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {OnebusawaySDK::Models::ArrivalsAndDeparturesForLocationListParams} for more
      #   details.
      #
      #   @param lat [Float] The latitude coordinate of the search center.
      #
      #   @param lon [Float] The longitude coordinate of the search center.
      #
      #   @param empty_returns_not_found [Boolean] If true, returns a 404 Not Found error instead of an empty result.
      #
      #   @param lat_span [Float] Sets the latitude limits of the search bounding box.
      #
      #   @param lon_span [Float] Sets the longitude limits of the search bounding box.
      #
      #   @param max_count [Integer] The max size of the list of nearby stops and arrivals to return. Defaults to 250
      #
      #   @param minutes_after [Integer] Include arrivals and departures this many minutes after the query time.
      #
      #   @param minutes_before [Integer] Include arrivals and departures this many minutes before the query time.
      #
      #   @param radius [Float] The search radius in meters.
      #
      #   @param route_type [String] Optional list of GTFS routeTypes to filter by (comma delimited) e.g. "1,2,3".
      #
      #   @param time [Integer] By default, returns the status right now. Can be queried at a specific time (mil
      #
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
