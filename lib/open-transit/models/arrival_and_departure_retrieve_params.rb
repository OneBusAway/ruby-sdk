# frozen_string_literal: true

module OpenTransit
  module Models
    class ArrivalAndDepartureRetrieveParams < OpenTransit::BaseModel
      # @!parse
      #   extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      # @!attribute service_date
      #
      #   @return [Integer]
      required :service_date, Integer, api_name: :serviceDate

      # @!attribute trip_id
      #
      #   @return [String]
      required :trip_id, String, api_name: :tripId

      # @!attribute [r] stop_sequence
      #
      #   @return [Integer, nil]
      optional :stop_sequence, Integer, api_name: :stopSequence

      # @!parse
      #   # @return [Integer]
      #   attr_writer :stop_sequence

      # @!attribute [r] time
      #
      #   @return [Integer, nil]
      optional :time, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :time

      # @!attribute [r] vehicle_id
      #
      #   @return [String, nil]
      optional :vehicle_id, String, api_name: :vehicleId

      # @!parse
      #   # @return [String]
      #   attr_writer :vehicle_id

      # @!parse
      #   # @param service_date [Integer]
      #   # @param trip_id [String]
      #   # @param stop_sequence [Integer]
      #   # @param time [Integer]
      #   # @param vehicle_id [String]
      #   # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(service_date:, trip_id:, stop_sequence: nil, time: nil, vehicle_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void
    end
  end
end
