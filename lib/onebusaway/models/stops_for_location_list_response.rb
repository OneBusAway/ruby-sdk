# frozen_string_literal: true

module Onebusaway
  module Models
    class StopsForLocationListResponse < Onebusaway::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [Onebusaway::Models::StopsForLocationListResponse::Data]
      required :data, -> { Onebusaway::Models::StopsForLocationListResponse::Data }

      # @!parse
      #   # @param data [Onebusaway::Models::StopsForLocationListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Onebusaway::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   limit_exceeded: Onebusaway::BooleanModel,
      #   list: -> { Onebusaway::ArrayOf[Onebusaway::Models::StopsForLocationListResponse::Data::List] === _1 },
      #   references: Onebusaway::Models::References,
      #   out_of_range: Onebusaway::BooleanModel
      # }
      # ```
      class Data < Onebusaway::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, Onebusaway::BooleanModel, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<Onebusaway::Models::StopsForLocationListResponse::Data::List>]
        required :list,
                 -> {
                   Onebusaway::ArrayOf[Onebusaway::Models::StopsForLocationListResponse::Data::List]
                 }

        # @!attribute references
        #
        #   @return [Onebusaway::Models::References]
        required :references, -> { Onebusaway::Models::References }

        # @!attribute [r] out_of_range
        #
        #   @return [Boolean, nil]
        optional :out_of_range, Onebusaway::BooleanModel, api_name: :outOfRange

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :out_of_range

        # @!parse
        #   # @param limit_exceeded [Boolean]
        #   # @param list [Array<Onebusaway::Models::StopsForLocationListResponse::Data::List>]
        #   # @param references [Onebusaway::Models::References]
        #   # @param out_of_range [Boolean]
        #   #
        #   def initialize(limit_exceeded:, list:, references:, out_of_range: nil, **) = super

        # def initialize: (Hash | Onebusaway::BaseModel) -> void

        # @example
        # ```ruby
        # list => {
        #   id: String,
        #   lat: Float,
        #   lon: Float,
        #   name: String,
        #   parent: String,
        #   **_
        # }
        # ```
        class List < Onebusaway::BaseModel
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
          required :route_ids, Onebusaway::ArrayOf[String], api_name: :routeIds

          # @!attribute static_route_ids
          #
          #   @return [Array<String>]
          required :static_route_ids, Onebusaway::ArrayOf[String], api_name: :staticRouteIds

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

          # def initialize: (Hash | Onebusaway::BaseModel) -> void
        end
      end
    end
  end
end
