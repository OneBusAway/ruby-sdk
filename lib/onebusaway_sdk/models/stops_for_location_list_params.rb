# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::StopsForLocation#list
    class StopsForLocationListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute lat
      #
      #   @return [Float]
      required :lat, Float

      # @!attribute lon
      #
      #   @return [Float]
      required :lon, Float

      # @!attribute lat_span
      #   An alternative to radius to set the search bounding box (optional)
      #
      #   @return [Float, nil]
      optional :lat_span, Float

      # @!attribute lon_span
      #   An alternative to radius to set the search bounding box (optional)
      #
      #   @return [Float, nil]
      optional :lon_span, Float

      # @!attribute query
      #   A search query string to filter the results
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute radius
      #   The radius in meters to search within
      #
      #   @return [Float, nil]
      optional :radius, Float

      # @!method initialize(lat:, lon:, lat_span: nil, lon_span: nil, query: nil, radius: nil, request_options: {})
      #   @param lat [Float]
      #
      #   @param lon [Float]
      #
      #   @param lat_span [Float] An alternative to radius to set the search bounding box (optional)
      #
      #   @param lon_span [Float] An alternative to radius to set the search bounding box (optional)
      #
      #   @param query [String] A search query string to filter the results
      #
      #   @param radius [Float] The radius in meters to search within
      #
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
