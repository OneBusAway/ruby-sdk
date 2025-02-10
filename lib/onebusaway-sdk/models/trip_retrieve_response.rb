# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class TripRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::TripRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::TripRetrieveResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::TripRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry,
      #   references: OnebusawaySDK::Models::References
      # }
      # ```
      class Data < OnebusawaySDK::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param entry [OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   id: String,
        #   route_id: String,
        #   service_id: String,
        #   block_id: String,
        #   direction_id: String,
        #   **_
        # }
        # ```
        class Entry < OnebusawaySDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute route_id
          #
          #   @return [String]
          required :route_id, String, api_name: :routeId

          # @!attribute service_id
          #
          #   @return [String]
          required :service_id, String, api_name: :serviceId

          # @!attribute [r] block_id
          #
          #   @return [String, nil]
          optional :block_id, String, api_name: :blockId

          # @!parse
          #   # @return [String]
          #   attr_writer :block_id

          # @!attribute [r] direction_id
          #
          #   @return [String, nil]
          optional :direction_id, String, api_name: :directionId

          # @!parse
          #   # @return [String]
          #   attr_writer :direction_id

          # @!attribute [r] peak_offpeak
          #
          #   @return [Integer, nil]
          optional :peak_offpeak, Integer, api_name: :peakOffpeak

          # @!parse
          #   # @return [Integer]
          #   attr_writer :peak_offpeak

          # @!attribute [r] route_short_name
          #
          #   @return [String, nil]
          optional :route_short_name, String, api_name: :routeShortName

          # @!parse
          #   # @return [String]
          #   attr_writer :route_short_name

          # @!attribute [r] shape_id
          #
          #   @return [String, nil]
          optional :shape_id, String, api_name: :shapeId

          # @!parse
          #   # @return [String]
          #   attr_writer :shape_id

          # @!attribute [r] time_zone
          #
          #   @return [String, nil]
          optional :time_zone, String, api_name: :timeZone

          # @!parse
          #   # @return [String]
          #   attr_writer :time_zone

          # @!attribute [r] trip_headsign
          #
          #   @return [String, nil]
          optional :trip_headsign, String, api_name: :tripHeadsign

          # @!parse
          #   # @return [String]
          #   attr_writer :trip_headsign

          # @!attribute [r] trip_short_name
          #
          #   @return [String, nil]
          optional :trip_short_name, String, api_name: :tripShortName

          # @!parse
          #   # @return [String]
          #   attr_writer :trip_short_name

          # @!parse
          #   # @param id [String]
          #   # @param route_id [String]
          #   # @param service_id [String]
          #   # @param block_id [String]
          #   # @param direction_id [String]
          #   # @param peak_offpeak [Integer]
          #   # @param route_short_name [String]
          #   # @param shape_id [String]
          #   # @param time_zone [String]
          #   # @param trip_headsign [String]
          #   # @param trip_short_name [String]
          #   #
          #   def initialize(
          #     id:,
          #     route_id:,
          #     service_id:,
          #     block_id: nil,
          #     direction_id: nil,
          #     peak_offpeak: nil,
          #     route_short_name: nil,
          #     shape_id: nil,
          #     time_zone: nil,
          #     trip_headsign: nil,
          #     trip_short_name: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
        end
      end
    end
  end
end
