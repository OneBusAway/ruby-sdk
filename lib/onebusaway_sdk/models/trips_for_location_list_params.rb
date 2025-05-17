# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::TripsForLocation#list
    class TripsForLocationListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute lat
      #   The latitude coordinate of the search center
      #
      #   @return [Float]
      required :lat, Float

      # @!attribute lat_span
      #   Latitude span of the search bounding box
      #
      #   @return [Float]
      required :lat_span, Float

      # @!attribute lon
      #   The longitude coordinate of the search center
      #
      #   @return [Float]
      required :lon, Float

      # @!attribute lon_span
      #   Longitude span of the search bounding box
      #
      #   @return [Float]
      required :lon_span, Float

      # @!attribute include_schedule
      #   Whether to include full schedule elements in the tripDetails section. Defaults
      #   to false.
      #
      #   @return [Boolean, nil]
      optional :include_schedule, OnebusawaySDK::Internal::Type::Boolean

      # @!attribute include_trip
      #   Whether to include full trip elements in the references section. Defaults to
      #   false.
      #
      #   @return [Boolean, nil]
      optional :include_trip, OnebusawaySDK::Internal::Type::Boolean

      # @!attribute time
      #   Specific time for the query. Defaults to the current time.
      #
      #   @return [Integer, nil]
      optional :time, Integer

      # @!method initialize(lat:, lat_span:, lon:, lon_span:, include_schedule: nil, include_trip: nil, time: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {OnebusawaySDK::Models::TripsForLocationListParams} for more details.
      #
      #   @param lat [Float] The latitude coordinate of the search center
      #
      #   @param lat_span [Float] Latitude span of the search bounding box
      #
      #   @param lon [Float] The longitude coordinate of the search center
      #
      #   @param lon_span [Float] Longitude span of the search bounding box
      #
      #   @param include_schedule [Boolean] Whether to include full schedule elements in the tripDetails section. Defaults t
      #
      #   @param include_trip [Boolean] Whether to include full trip elements in the references section. Defaults to fal
      #
      #   @param time [Integer] Specific time for the query. Defaults to the current time.
      #
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
