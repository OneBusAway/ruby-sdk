# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::RoutesForLocation#list
    class RoutesForLocationListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute lat
      #   If omitted, defaults to 0.0.
      #
      #   @return [Float, nil]
      optional :lat, Float

      # @!attribute lat_span
      #
      #   @return [Float, nil]
      optional :lat_span, Float

      # @!attribute lon
      #   If omitted, defaults to 0.0.
      #
      #   @return [Float, nil]
      optional :lon, Float

      # @!attribute lon_span
      #
      #   @return [Float, nil]
      optional :lon_span, Float

      # @!attribute query
      #
      #   @return [String, nil]
      optional :query, String

      # @!attribute radius
      #
      #   @return [Float, nil]
      optional :radius, Float

      # @!method initialize(lat: nil, lat_span: nil, lon: nil, lon_span: nil, query: nil, radius: nil, request_options: {})
      #   @param lat [Float] If omitted, defaults to 0.0.
      #
      #   @param lat_span [Float]
      #
      #   @param lon [Float] If omitted, defaults to 0.0.
      #
      #   @param lon_span [Float]
      #
      #   @param query [String]
      #
      #   @param radius [Float]
      #
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
