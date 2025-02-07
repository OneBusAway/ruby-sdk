# frozen_string_literal: true

module OpenTransit
  module Models
    class TripForVehicleRetrieveParams < OpenTransit::BaseModel
      # @!parse
      #   extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      # @!attribute [r] include_schedule
      #   Determines whether full <schedule/> element is included in the <tripDetails/>
      #     section. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :include_schedule, OpenTransit::BooleanModel, api_name: :includeSchedule

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_schedule

      # @!attribute [r] include_status
      #   Determines whether the full <status/> element is included in the <tripDetails/>
      #     section. Defaults to true.
      #
      #   @return [Boolean, nil]
      optional :include_status, OpenTransit::BooleanModel, api_name: :includeStatus

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_status

      # @!attribute [r] include_trip
      #   Determines whether full <trip/> element is included in the <references/>
      #     section. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :include_trip, OpenTransit::BooleanModel, api_name: :includeTrip

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :include_trip

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
      #   # @param time [Integer]
      #   # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(include_schedule: nil, include_status: nil, include_trip: nil, time: nil, request_options: {}, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void
    end
  end
end
