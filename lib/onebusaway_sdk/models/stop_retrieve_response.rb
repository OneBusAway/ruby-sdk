# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::Stop#retrieve
    class StopRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::StopRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::StopRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::StopRetrieveResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::StopRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::StopRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OnebusawaySDK::Models::StopRetrieveResponse::Data::Entry]
        #   @param references [OnebusawaySDK::Models::References]

        # @see OnebusawaySDK::Models::StopRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute lat
          #
          #   @return [Float]
          required :lat, Float

          # @!attribute lon
          #
          #   @return [Float]
          required :lon, Float

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute parent
          #
          #   @return [String]
          required :parent, String

          # @!attribute route_ids
          #
          #   @return [Array<String>]
          required :route_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :routeIds

          # @!attribute static_route_ids
          #
          #   @return [Array<String>]
          required :static_route_ids,
                   OnebusawaySDK::Internal::Type::ArrayOf[String],
                   api_name: :staticRouteIds

          # @!attribute [r] code
          #
          #   @return [String, nil]
          optional :code, String

          # @!parse
          #   # @return [String]
          #   attr_writer :code

          # @!attribute [r] direction
          #
          #   @return [String, nil]
          optional :direction, String

          # @!parse
          #   # @return [String]
          #   attr_writer :direction

          # @!attribute [r] location_type
          #
          #   @return [Integer, nil]
          optional :location_type, Integer, api_name: :locationType

          # @!parse
          #   # @return [Integer]
          #   attr_writer :location_type

          # @!attribute [r] wheelchair_boarding
          #
          #   @return [String, nil]
          optional :wheelchair_boarding, String, api_name: :wheelchairBoarding

          # @!parse
          #   # @return [String]
          #   attr_writer :wheelchair_boarding

          # @!method initialize(id:, lat:, lon:, name:, parent:, route_ids:, static_route_ids:, code: nil, direction: nil, location_type: nil, wheelchair_boarding: nil)
          #   @param id [String]
          #   @param lat [Float]
          #   @param lon [Float]
          #   @param name [String]
          #   @param parent [String]
          #   @param route_ids [Array<String>]
          #   @param static_route_ids [Array<String>]
          #   @param code [String]
          #   @param direction [String]
          #   @param location_type [Integer]
          #   @param wheelchair_boarding [String]
        end
      end
    end
  end
end
