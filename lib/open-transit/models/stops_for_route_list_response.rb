# frozen_string_literal: true

module OpenTransit
  module Models
    class StopsForRouteListResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::StopsForRouteListResponse::Data]
      required :data, -> { OpenTransit::Models::StopsForRouteListResponse::Data }

      # @!parse
      #   # @param data [OpenTransit::Models::StopsForRouteListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: OpenTransit::Models::StopsForRouteListResponse::Data::Entry,
      #   references: OpenTransit::Models::References
      # }
      # ```
      class Data < OpenTransit::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::StopsForRouteListResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::StopsForRouteListResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OpenTransit::Models::References]
        required :references, -> { OpenTransit::Models::References }

        # @!parse
        #   # @param entry [OpenTransit::Models::StopsForRouteListResponse::Data::Entry]
        #   # @param references [OpenTransit::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OpenTransit::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   polylines: -> { OpenTransit::ArrayOf[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline] === _1 },
        #   route_id: String,
        #   stop_groupings: -> { OpenTransit::ArrayOf[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping] === _1 },
        #   stop_ids: -> { OpenTransit::ArrayOf[String] === _1 }
        # }
        # ```
        class Entry < OpenTransit::BaseModel
          # @!attribute [r] polylines
          #
          #   @return [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline>, nil]
          optional :polylines,
                   -> {
                     OpenTransit::ArrayOf[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline]
                   }

          # @!parse
          #   # @return [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline>]
          #   attr_writer :polylines

          # @!attribute [r] route_id
          #
          #   @return [String, nil]
          optional :route_id, String, api_name: :routeId

          # @!parse
          #   # @return [String]
          #   attr_writer :route_id

          # @!attribute [r] stop_groupings
          #
          #   @return [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping>, nil]
          optional :stop_groupings,
                   -> {
                     OpenTransit::ArrayOf[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping]
                   },
                   api_name: :stopGroupings

          # @!parse
          #   # @return [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping>]
          #   attr_writer :stop_groupings

          # @!attribute [r] stop_ids
          #
          #   @return [Array<String>, nil]
          optional :stop_ids, OpenTransit::ArrayOf[String], api_name: :stopIds

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :stop_ids

          # @!parse
          #   # @param polylines [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline>]
          #   # @param route_id [String]
          #   # @param stop_groupings [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping>]
          #   # @param stop_ids [Array<String>]
          #   #
          #   def initialize(polylines: nil, route_id: nil, stop_groupings: nil, stop_ids: nil, **) = super

          # def initialize: (Hash | OpenTransit::BaseModel) -> void

          # @example
          # ```ruby
          # polyline => {
          #   length: Integer,
          #   levels: String,
          #   points: String
          # }
          # ```
          class Polyline < OpenTransit::BaseModel
            # @!attribute [r] length
            #
            #   @return [Integer, nil]
            optional :length, Integer

            # @!parse
            #   # @return [Integer]
            #   attr_writer :length

            # @!attribute [r] levels
            #
            #   @return [String, nil]
            optional :levels, String

            # @!parse
            #   # @return [String]
            #   attr_writer :levels

            # @!attribute [r] points
            #
            #   @return [String, nil]
            optional :points, String

            # @!parse
            #   # @return [String]
            #   attr_writer :points

            # @!parse
            #   # @param length [Integer]
            #   # @param levels [String]
            #   # @param points [String]
            #   #
            #   def initialize(length: nil, levels: nil, points: nil, **) = super

            # def initialize: (Hash | OpenTransit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # stop_grouping => {
          #   id: String,
          #   name: OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name,
          #   polylines: -> { OpenTransit::ArrayOf[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline] === _1 },
          #   stop_ids: -> { OpenTransit::ArrayOf[String] === _1 }
          # }
          # ```
          class StopGrouping < OpenTransit::BaseModel
            # @!attribute [r] id
            #
            #   @return [String, nil]
            optional :id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :id

            # @!attribute [r] name
            #
            #   @return [OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name, nil]
            optional :name,
                     -> {
                       OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name
                     }

            # @!parse
            #   # @return [OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name]
            #   attr_writer :name

            # @!attribute [r] polylines
            #
            #   @return [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline>, nil]
            optional :polylines,
                     -> {
                       OpenTransit::ArrayOf[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline]
                     }

            # @!parse
            #   # @return [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline>]
            #   attr_writer :polylines

            # @!attribute [r] stop_ids
            #
            #   @return [Array<String>, nil]
            optional :stop_ids, OpenTransit::ArrayOf[String], api_name: :stopIds

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :stop_ids

            # @!parse
            #   # @param id [String]
            #   # @param name [OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name]
            #   # @param polylines [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline>]
            #   # @param stop_ids [Array<String>]
            #   #
            #   def initialize(id: nil, name: nil, polylines: nil, stop_ids: nil, **) = super

            # def initialize: (Hash | OpenTransit::BaseModel) -> void

            # @example
            # ```ruby
            # name => {
            #   name: String,
            #   names: -> { OpenTransit::ArrayOf[String] === _1 },
            #   type: String
            # }
            # ```
            class Name < OpenTransit::BaseModel
              # @!attribute [r] name
              #
              #   @return [String, nil]
              optional :name, String

              # @!parse
              #   # @return [String]
              #   attr_writer :name

              # @!attribute [r] names
              #
              #   @return [Array<String>, nil]
              optional :names, OpenTransit::ArrayOf[String]

              # @!parse
              #   # @return [Array<String>]
              #   attr_writer :names

              # @!attribute [r] type
              #
              #   @return [String, nil]
              optional :type, String

              # @!parse
              #   # @return [String]
              #   attr_writer :type

              # @!parse
              #   # @param name [String]
              #   # @param names [Array<String>]
              #   # @param type [String]
              #   #
              #   def initialize(name: nil, names: nil, type: nil, **) = super

              # def initialize: (Hash | OpenTransit::BaseModel) -> void
            end

            # @example
            # ```ruby
            # polyline => {
            #   length: Integer,
            #   levels: String,
            #   points: String
            # }
            # ```
            class Polyline < OpenTransit::BaseModel
              # @!attribute [r] length
              #
              #   @return [Integer, nil]
              optional :length, Integer

              # @!parse
              #   # @return [Integer]
              #   attr_writer :length

              # @!attribute [r] levels
              #
              #   @return [String, nil]
              optional :levels, String

              # @!parse
              #   # @return [String]
              #   attr_writer :levels

              # @!attribute [r] points
              #
              #   @return [String, nil]
              optional :points, String

              # @!parse
              #   # @return [String]
              #   attr_writer :points

              # @!parse
              #   # @param length [Integer]
              #   # @param levels [String]
              #   # @param points [String]
              #   #
              #   def initialize(length: nil, levels: nil, points: nil, **) = super

              # def initialize: (Hash | OpenTransit::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
