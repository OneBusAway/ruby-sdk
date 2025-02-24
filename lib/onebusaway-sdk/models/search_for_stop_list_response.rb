# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class SearchForStopListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute [r] data
      #
      #   @return [OnebusawaySDK::Models::SearchForStopListResponse::Data, nil]
      optional :data, -> { OnebusawaySDK::Models::SearchForStopListResponse::Data }

      # @!parse
      #   # @return [OnebusawaySDK::Models::SearchForStopListResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [OnebusawaySDK::Models::SearchForStopListResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

      class Data < OnebusawaySDK::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OnebusawaySDK::BooleanModel, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<OnebusawaySDK::Models::SearchForStopListResponse::Data::List>]
        required :list,
                 -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::SearchForStopListResponse::Data::List] }

        # @!attribute out_of_range
        #
        #   @return [Boolean]
        required :out_of_range, OnebusawaySDK::BooleanModel, api_name: :outOfRange

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param limit_exceeded [Boolean]
        #   # @param list [Array<OnebusawaySDK::Models::SearchForStopListResponse::Data::List>]
        #   # @param out_of_range [Boolean]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(limit_exceeded:, list:, out_of_range:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

        class List < OnebusawaySDK::BaseModel
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
          required :route_ids, OnebusawaySDK::ArrayOf[String], api_name: :routeIds

          # @!attribute static_route_ids
          #
          #   @return [Array<String>]
          required :static_route_ids, OnebusawaySDK::ArrayOf[String], api_name: :staticRouteIds

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

          # @!parse
          #   # @param id [String]
          #   # @param lat [Float]
          #   # @param lon [Float]
          #   # @param name [String]
          #   # @param parent [String]
          #   # @param route_ids [Array<String>]
          #   # @param static_route_ids [Array<String>]
          #   # @param code [String]
          #   # @param direction [String]
          #   # @param location_type [Integer]
          #   # @param wheelchair_boarding [String]
          #   #
          #   def initialize(
          #     id:,
          #     lat:,
          #     lon:,
          #     name:,
          #     parent:,
          #     route_ids:,
          #     static_route_ids:,
          #     code: nil,
          #     direction: nil,
          #     location_type: nil,
          #     wheelchair_boarding: nil,
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
