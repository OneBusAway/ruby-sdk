# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class StopsForRouteListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::StopsForRouteListResponse::Data]
      required :data, -> { OnebusawaySDK::Models::StopsForRouteListResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::StopsForRouteListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

      class Data < OnebusawaySDK::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param entry [OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

        # @see OnebusawaySDK::Models::StopsForRouteListResponse::Data#entry
        class Entry < OnebusawaySDK::BaseModel
          # @!attribute [r] polylines
          #
          #   @return [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline>, nil]
          optional :polylines,
                   -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline] }

          # @!parse
          #   # @return [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline>]
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
          #   @return [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping>, nil]
          optional :stop_groupings,
                   -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping] },
                   api_name: :stopGroupings

          # @!parse
          #   # @return [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping>]
          #   attr_writer :stop_groupings

          # @!attribute [r] stop_ids
          #
          #   @return [Array<String>, nil]
          optional :stop_ids, OnebusawaySDK::ArrayOf[String], api_name: :stopIds

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :stop_ids

          # @!parse
          #   # @param polylines [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline>]
          #   # @param route_id [String]
          #   # @param stop_groupings [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping>]
          #   # @param stop_ids [Array<String>]
          #   #
          #   def initialize(polylines: nil, route_id: nil, stop_groupings: nil, stop_ids: nil, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

          class Polyline < OnebusawaySDK::BaseModel
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

            # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
          end

          class StopGrouping < OnebusawaySDK::BaseModel
            # @!attribute [r] id
            #
            #   @return [String, nil]
            optional :id, String

            # @!parse
            #   # @return [String]
            #   attr_writer :id

            # @!attribute [r] name
            #
            #   @return [OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name, nil]
            optional :name, -> { OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name }

            # @!parse
            #   # @return [OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name]
            #   attr_writer :name

            # @!attribute [r] polylines
            #
            #   @return [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline>, nil]
            optional :polylines,
                     -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline] }

            # @!parse
            #   # @return [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline>]
            #   attr_writer :polylines

            # @!attribute [r] stop_ids
            #
            #   @return [Array<String>, nil]
            optional :stop_ids, OnebusawaySDK::ArrayOf[String], api_name: :stopIds

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :stop_ids

            # @!parse
            #   # @param id [String]
            #   # @param name [OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name]
            #   # @param polylines [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline>]
            #   # @param stop_ids [Array<String>]
            #   #
            #   def initialize(id: nil, name: nil, polylines: nil, stop_ids: nil, **) = super

            # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

            # @see OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping#name
            class Name < OnebusawaySDK::BaseModel
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
              optional :names, OnebusawaySDK::ArrayOf[String]

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

              # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
            end

            class Polyline < OnebusawaySDK::BaseModel
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

              # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
