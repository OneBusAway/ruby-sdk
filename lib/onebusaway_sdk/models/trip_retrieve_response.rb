# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::Trip#retrieve
    class TripRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::TripRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::TripRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::TripRetrieveResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OnebusawaySDK::Models::TripRetrieveResponse::Data::Entry]
        #   @param references [OnebusawaySDK::Models::References]

        # @see OnebusawaySDK::Models::TripRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::Internal::Type::BaseModel
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

          # @!attribute block_id
          #
          #   @return [String, nil]
          optional :block_id, String, api_name: :blockId

          # @!attribute direction_id
          #
          #   @return [String, nil]
          optional :direction_id, String, api_name: :directionId

          # @!attribute peak_offpeak
          #
          #   @return [Integer, nil]
          optional :peak_offpeak, Integer, api_name: :peakOffpeak

          # @!attribute route_short_name
          #
          #   @return [String, nil]
          optional :route_short_name, String, api_name: :routeShortName

          # @!attribute shape_id
          #
          #   @return [String, nil]
          optional :shape_id, String, api_name: :shapeId

          # @!attribute time_zone
          #
          #   @return [String, nil]
          optional :time_zone, String, api_name: :timeZone

          # @!attribute trip_headsign
          #
          #   @return [String, nil]
          optional :trip_headsign, String, api_name: :tripHeadsign

          # @!attribute trip_short_name
          #
          #   @return [String, nil]
          optional :trip_short_name, String, api_name: :tripShortName

          # @!method initialize(id:, route_id:, service_id:, block_id: nil, direction_id: nil, peak_offpeak: nil, route_short_name: nil, shape_id: nil, time_zone: nil, trip_headsign: nil, trip_short_name: nil)
          #   @param id [String]
          #   @param route_id [String]
          #   @param service_id [String]
          #   @param block_id [String]
          #   @param direction_id [String]
          #   @param peak_offpeak [Integer]
          #   @param route_short_name [String]
          #   @param shape_id [String]
          #   @param time_zone [String]
          #   @param trip_headsign [String]
          #   @param trip_short_name [String]
        end
      end
    end
  end
end
