# frozen_string_literal: true

module OpenTransit
  module Models
    class RoutesForLocationListParams < OpenTransit::BaseModel
      # @!parse
      #   extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      # @!attribute lat
      #
      #   @return [Float]
      required :lat, Float

      # @!attribute lon
      #
      #   @return [Float]
      required :lon, Float

      # @!attribute [r] lat_span
      #
      #   @return [Float, nil]
      optional :lat_span, Float, api_name: :latSpan

      # @!parse
      #   # @return [Float]
      #   attr_writer :lat_span

      # @!attribute [r] lon_span
      #
      #   @return [Float, nil]
      optional :lon_span, Float, api_name: :lonSpan

      # @!parse
      #   # @return [Float]
      #   attr_writer :lon_span

      # @!attribute [r] query
      #
      #   @return [String, nil]
      optional :query, String

      # @!parse
      #   # @return [String]
      #   attr_writer :query

      # @!attribute [r] radius
      #
      #   @return [Float, nil]
      optional :radius, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :radius

      # @!parse
      #   # @param lat [Float]
      #   # @param lon [Float]
      #   # @param lat_span [Float]
      #   # @param lon_span [Float]
      #   # @param query [String]
      #   # @param radius [Float]
      #   # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(lat:, lon:, lat_span: nil, lon_span: nil, query: nil, radius: nil, request_options: {}, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void
    end
  end
end
