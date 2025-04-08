# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ArrivalAndDeparture#retrieve
    class ArrivalAndDepartureRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      # @!parse
      #   extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute service_date
      #
      #   @return [Integer]
      required :service_date, Integer

      # @!attribute trip_id
      #
      #   @return [String]
      required :trip_id, String

      # @!attribute [r] stop_sequence
      #
      #   @return [Integer, nil]
      optional :stop_sequence, Integer

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
      optional :vehicle_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :vehicle_id

      # @!parse
      #   # @param service_date [Integer]
      #   # @param trip_id [String]
      #   # @param stop_sequence [Integer]
      #   # @param time [Integer]
      #   # @param vehicle_id [String]
      #   # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(service_date:, trip_id:, stop_sequence: nil, time: nil, vehicle_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void
    end
  end
end
