# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::StopsForRoute#list
    class StopsForRouteListParams < OnebusawaySDK::Internal::Type::BaseModel
      # @!parse
      #   extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute [r] include_polylines
      #   Include polyline elements in the response (default true)
      #
      #   @return [Boolean, nil]
      optional :include_polylines, OnebusawaySDK::Internal::Type::BooleanModel, api_name: :includePolylines

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_polylines

      # @!attribute [r] time
      #   Specify service date (YYYY-MM-DD or epoch) (default today)
      #
      #   @return [String, nil]
      optional :time, String

      # @!parse
      #   # @return [String]
      #   attr_writer :time

      # @!parse
      #   # @param include_polylines [Boolean]
      #   # @param time [String]
      #   # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(include_polylines: nil, time: nil, request_options: {}, **) = super

      # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void
    end
  end
end
