# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::TripsForRoute#list
    class TripsForRouteListParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      # @!attribute include_schedule
      #   Determine whether full schedule elements are included. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :include_schedule, OpenTransit::Internal::Type::Boolean

      # @!attribute include_status
      #   Determine whether full tripStatus elements with real-time information are
      #   included. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :include_status, OpenTransit::Internal::Type::Boolean

      # @!attribute time
      #   Query the system at a specific time. Useful for testing.
      #
      #   @return [Integer, nil]
      optional :time, Integer

      # @!method initialize(include_schedule: nil, include_status: nil, time: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {OpenTransit::Models::TripsForRouteListParams} for more details.
      #
      #   @param include_schedule [Boolean] Determine whether full schedule elements are included. Defaults to false.
      #
      #   @param include_status [Boolean] Determine whether full tripStatus elements with real-time information are includ
      #
      #   @param time [Integer] Query the system at a specific time. Useful for testing.
      #
      #   @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
