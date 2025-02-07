# frozen_string_literal: true

module Onebusaway
  module Models
    class StopRetrieveResponse < Onebusaway::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [Onebusaway::Models::StopRetrieveResponse::Data]
      required :data, -> { Onebusaway::Models::StopRetrieveResponse::Data }

      # @!parse
      #   # @param data [Onebusaway::Models::StopRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Onebusaway::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: Onebusaway::Models::StopRetrieveResponse::Data::Entry,
      #   references: Onebusaway::Models::References
      # }
      # ```
      class Data < Onebusaway::BaseModel
        # @!attribute entry
        #
        #   @return [Onebusaway::Models::StopRetrieveResponse::Data::Entry]
        required :entry, -> { Onebusaway::Models::StopRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [Onebusaway::Models::References]
        required :references, -> { Onebusaway::Models::References }

        # @!parse
        #   # @param entry [Onebusaway::Models::StopRetrieveResponse::Data::Entry]
        #   # @param references [Onebusaway::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | Onebusaway::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   id: String,
        #   lat: Float,
        #   lon: Float,
        #   name: String,
        #   parent: String,
        #   **_
        # }
        # ```
        class Entry < Onebusaway::BaseModel
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
