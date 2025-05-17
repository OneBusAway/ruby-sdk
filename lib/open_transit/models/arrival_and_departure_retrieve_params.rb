# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::ArrivalAndDeparture#retrieve
    class ArrivalAndDepartureRetrieveParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      # @!attribute service_date
      #
      #   @return [Integer]
      required :service_date, Integer

      # @!attribute trip_id
      #
      #   @return [String]
      required :trip_id, String

      # @!attribute stop_sequence
      #
      #   @return [Integer, nil]
      optional :stop_sequence, Integer

      # @!attribute time
      #
      #   @return [Integer, nil]
      optional :time, Integer

      # @!attribute vehicle_id
      #
      #   @return [String, nil]
      optional :vehicle_id, String

      # @!method initialize(service_date:, trip_id:, stop_sequence: nil, time: nil, vehicle_id: nil, request_options: {})
      #   @param service_date [Integer]
      #   @param trip_id [String]
      #   @param stop_sequence [Integer]
      #   @param time [Integer]
      #   @param vehicle_id [String]
      #   @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
