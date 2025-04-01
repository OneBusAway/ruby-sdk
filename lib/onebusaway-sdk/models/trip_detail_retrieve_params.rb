# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class TripDetailRetrieveParams < OnebusawaySDK::BaseModel
      # @!parse
      #   extend OnebusawaySDK::Type::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # @!attribute [r] include_schedule
      #   Whether to include the full schedule element in the tripDetails section
      #     (defaults to true).
      #
      #   @return [Boolean, nil]
      optional :include_schedule, OnebusawaySDK::BooleanModel, api_name: :includeSchedule

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_schedule

      # @!attribute [r] include_status
      #   Whether to include the full status element in the tripDetails section (defaults
      #     to true).
      #
      #   @return [Boolean, nil]
      optional :include_status, OnebusawaySDK::BooleanModel, api_name: :includeStatus

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_status

      # @!attribute [r] include_trip
      #   Whether to include the full trip element in the references section (defaults to
      #     true).
      #
      #   @return [Boolean, nil]
      optional :include_trip, OnebusawaySDK::BooleanModel, api_name: :includeTrip

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_trip

      # @!attribute [r] service_date
      #   Service date for the trip as Unix time in milliseconds (optional).
      #
      #   @return [Integer, nil]
      optional :service_date, Integer, api_name: :serviceDate

      # @!parse
      #   # @return [Integer]
      #   attr_writer :service_date

      # @!attribute [r] time
      #   Time parameter to query the system at a specific time (optional).
      #
      #   @return [Integer, nil]
      optional :time, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :time

      # @!parse
      #   # @param include_schedule [Boolean]
      #   # @param include_status [Boolean]
      #   # @param include_trip [Boolean]
      #   # @param service_date [Integer]
      #   # @param time [Integer]
      #   # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     include_schedule: nil,
      #     include_status: nil,
      #     include_trip: nil,
      #     service_date: nil,
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
