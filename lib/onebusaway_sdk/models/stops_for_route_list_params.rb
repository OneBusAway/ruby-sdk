# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::StopsForRoute#list
    class StopsForRouteListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute include_polylines
      #   Include polyline elements in the response (default true)
      #
      #   @return [Boolean, nil]
      optional :include_polylines, OnebusawaySDK::Internal::Type::Boolean

      # @!attribute time
      #   Specify service date (YYYY-MM-DD or epoch) (default today)
      #
      #   @return [String, nil]
      optional :time, String

      # @!method initialize(include_polylines: nil, time: nil, request_options: {})
      #   @param include_polylines [Boolean] Include polyline elements in the response (default true)
      #
      #   @param time [String] Specify service date (YYYY-MM-DD or epoch) (default today)
      #
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
