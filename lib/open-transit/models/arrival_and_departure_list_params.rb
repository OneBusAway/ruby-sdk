# frozen_string_literal: true

module OpenTransit
  module Models
    class ArrivalAndDepartureListParams < OpenTransit::BaseModel
      # @!parse
      #   extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      # @!attribute [r] minutes_after
      #   Include vehicles arriving or departing in the next n minutes.
      #
      #   @return [Integer, nil]
      optional :minutes_after, Integer, api_name: :minutesAfter

      # @!parse
      #   # @return [Integer]
      #   attr_writer :minutes_after

      # @!attribute [r] minutes_before
      #   Include vehicles having arrived or departed in the previous n minutes.
      #
      #   @return [Integer, nil]
      optional :minutes_before, Integer, api_name: :minutesBefore

      # @!parse
      #   # @return [Integer]
      #   attr_writer :minutes_before

      # @!attribute [r] time
      #   The specific time for querying the system status.
      #
      #   @return [Time, nil]
      optional :time, Time

      # @!parse
      #   # @return [Time]
      #   attr_writer :time

      # @!parse
      #   # @param minutes_after [Integer]
      #   # @param minutes_before [Integer]
      #   # @param time [Time]
      #   # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(minutes_after: nil, minutes_before: nil, time: nil, request_options: {}, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void
    end
  end
end
