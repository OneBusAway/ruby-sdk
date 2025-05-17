# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::RoutesForLocation#list
    class RoutesForLocationListParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      # @!attribute lat
      #
      #   @return [Float]
      required :lat, Float

      # @!attribute lon
      #
      #   @return [Float]
      required :lon, Float

      # @!attribute lat_span
      #
      #   @return [Float, nil]
      optional :lat_span, Float

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

      # @!method initialize(lat:, lon:, lat_span: nil, lon_span: nil, query: nil, radius: nil, request_options: {})
      #   @param lat [Float]
      #   @param lon [Float]
      #   @param lat_span [Float]
      #   @param lon_span [Float]
      #   @param query [String]
      #   @param radius [Float]
      #   @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
