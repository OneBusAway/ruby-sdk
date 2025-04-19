# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::StopsForLocation#list
    class StopsForLocationListParams < OnebusawaySDK::Internal::Type::BaseModel
      # @!parse
      #   extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute lat
      #
      #   @return [Float]
      required :lat, Float

      # @!attribute lon
      #
      #   @return [Float]
      required :lon, Float

      # @!attribute [r] lat_span
      #   An alternative to radius to set the search bounding box (optional)
      #
      #   @return [Float, nil]
      optional :lat_span, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :lat_span

      # @!attribute [r] lon_span
      #   An alternative to radius to set the search bounding box (optional)
      #
      #   @return [Float, nil]
      optional :lon_span, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :lon_span

      # @!attribute [r] query
      #   A search query string to filter the results
      #
      #   @return [String, nil]
      optional :query, String

      # @!parse
      #   # @return [String]
      #   attr_writer :query

      # @!attribute [r] radius
      #   The radius in meters to search within
      #
      #   @return [Float, nil]
      optional :radius, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :radius

      # @!method initialize(lat:, lon:, lat_span: nil, lon_span: nil, query: nil, radius: nil, request_options: {})
      #   @param lat [Float]
      #   @param lon [Float]
      #   @param lat_span [Float]
      #   @param lon_span [Float]
      #   @param query [String]
      #   @param radius [Float]
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
