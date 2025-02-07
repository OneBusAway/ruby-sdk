# frozen_string_literal: true

module OpenTransit
  module Models
    class SearchForStopListResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute [r] data
      #
      #   @return [OpenTransit::Models::SearchForStopListResponse::Data, nil]
      optional :data, -> { OpenTransit::Models::SearchForStopListResponse::Data }

      # @!parse
      #   # @return [OpenTransit::Models::SearchForStopListResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [OpenTransit::Models::SearchForStopListResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   limit_exceeded: OpenTransit::BooleanModel,
      #   list: -> { OpenTransit::ArrayOf[OpenTransit::Models::SearchForStopListResponse::Data::List] === _1 },
      #   out_of_range: OpenTransit::BooleanModel,
      #   references: OpenTransit::Models::References
      # }
      # ```
      class Data < OpenTransit::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OpenTransit::BooleanModel, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<OpenTransit::Models::SearchForStopListResponse::Data::List>]
        required :list,
                 -> {
                   OpenTransit::ArrayOf[OpenTransit::Models::SearchForStopListResponse::Data::List]
                 }

        # @!attribute out_of_range
        #
        #   @return [Boolean]
        required :out_of_range, OpenTransit::BooleanModel, api_name: :outOfRange

        # @!attribute references
        #
        #   @return [OpenTransit::Models::References]
        required :references, -> { OpenTransit::Models::References }

        # @!parse
        #   # @param limit_exceeded [Boolean]
        #   # @param list [Array<OpenTransit::Models::SearchForStopListResponse::Data::List>]
        #   # @param out_of_range [Boolean]
        #   # @param references [OpenTransit::Models::References]
        #   #
        #   def initialize(limit_exceeded:, list:, out_of_range:, references:, **) = super

        # def initialize: (Hash | OpenTransit::BaseModel) -> void

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
        class List < OpenTransit::BaseModel
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
          required :route_ids, OpenTransit::ArrayOf[String], api_name: :routeIds

          # @!attribute static_route_ids
          #
          #   @return [Array<String>]
          required :static_route_ids, OpenTransit::ArrayOf[String], api_name: :staticRouteIds

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

          # def initialize: (Hash | OpenTransit::BaseModel) -> void
        end
      end
    end
  end
end
