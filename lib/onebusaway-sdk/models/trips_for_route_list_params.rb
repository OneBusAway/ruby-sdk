# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class TripsForRouteListParams < OnebusawaySDK::BaseModel
      # @!parse
      #   extend OnebusawaySDK::Type::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # @!attribute [r] include_schedule
      #   Determine whether full schedule elements are included. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :include_schedule, OnebusawaySDK::BooleanModel, api_name: :includeSchedule

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_schedule

      # @!attribute [r] include_status
      #   Determine whether full tripStatus elements with real-time information are
      #     included. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :include_status, OnebusawaySDK::BooleanModel, api_name: :includeStatus

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_status

      # @!attribute [r] time
      #   Query the system at a specific time. Useful for testing.
      #
      #   @return [Integer, nil]
      optional :time, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :time

      # @!parse
      #   # @param include_schedule [Boolean]
      #   # @param include_status [Boolean]
      #   # @param time [Integer]
      #   # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(include_schedule: nil, include_status: nil, time: nil, request_options: {}, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
    end
  end
end
