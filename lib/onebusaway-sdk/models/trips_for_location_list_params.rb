# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class TripsForLocationListParams < OnebusawaySDK::BaseModel
      # @!parse
      #   extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # @!attribute lat
      #   The latitude coordinate of the search center
      #
      #   @return [Float]
      required :lat, Float

      # @!attribute lat_span
      #   Latitude span of the search bounding box
      #
      #   @return [Float]
      required :lat_span, Float, api_name: :latSpan

      # @!attribute lon
      #   The longitude coordinate of the search center
      #
      #   @return [Float]
      required :lon, Float

      # @!attribute lon_span
      #   Longitude span of the search bounding box
      #
      #   @return [Float]
      required :lon_span, Float, api_name: :lonSpan

      # @!attribute [r] include_schedule
      #   Whether to include full schedule elements in the tripDetails section. Defaults
      #     to false.
      #
      #   @return [Boolean, nil]
      optional :include_schedule, OnebusawaySDK::BooleanModel, api_name: :includeSchedule

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_schedule

      # @!attribute [r] include_trip
      #   Whether to include full trip elements in the references section. Defaults to
      #     false.
      #
      #   @return [Boolean, nil]
      optional :include_trip, OnebusawaySDK::BooleanModel, api_name: :includeTrip

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_trip

      # @!attribute [r] time
      #   Specific time for the query. Defaults to the current time.
      #
      #   @return [Integer, nil]
      optional :time, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :time

      # @!parse
      #   # @param lat [Float]
      #   # @param lat_span [Float]
      #   # @param lon [Float]
      #   # @param lon_span [Float]
      #   # @param include_schedule [Boolean]
      #   # @param include_trip [Boolean]
      #   # @param time [Integer]
      #   # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     lat:,
      #     lat_span:,
      #     lon:,
      #     lon_span:,
      #     include_schedule: nil,
      #     include_trip: nil,
      #     time: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
    end
  end
end
