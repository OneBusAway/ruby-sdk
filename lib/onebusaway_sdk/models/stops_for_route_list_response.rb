# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::StopsForRoute#list
    class StopsForRouteListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::StopsForRouteListResponse::Data]
      required :data, -> { OnebusawaySDK::Models::StopsForRouteListResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::StopsForRouteListResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry]
        #   @param references [OnebusawaySDK::Models::References]

        # @see OnebusawaySDK::Models::StopsForRouteListResponse::Data#entry
        class Entry < OnebusawaySDK::Internal::Type::BaseModel
          # @!attribute polylines
          #
          #   @return [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline>, nil]
          optional :polylines,
                   -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline] }

          # @!attribute route_id
          #
          #   @return [String, nil]
          optional :route_id, String, api_name: :routeId

          # @!attribute stop_groupings
          #
          #   @return [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping>, nil]
          optional :stop_groupings,
                   -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping] },
                   api_name: :stopGroupings

          # @!attribute stop_ids
          #
          #   @return [Array<String>, nil]
          optional :stop_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :stopIds

          # @!method initialize(polylines: nil, route_id: nil, stop_groupings: nil, stop_ids: nil)
          #   @param polylines [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline>]
          #   @param route_id [String]
          #   @param stop_groupings [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping>]
          #   @param stop_ids [Array<String>]

          class Polyline < OnebusawaySDK::Internal::Type::BaseModel
            # @!attribute length
            #
            #   @return [Integer, nil]
            optional :length, Integer

            # @!attribute levels
            #
            #   @return [String, nil]
            optional :levels, String

            # @!attribute points
            #
            #   @return [String, nil]
            optional :points, String

            # @!method initialize(length: nil, levels: nil, points: nil)
            #   @param length [Integer]
            #   @param levels [String]
            #   @param points [String]
          end

          class StopGrouping < OnebusawaySDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute name
            #
            #   @return [OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name, nil]
            optional :name, -> { OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name }

            # @!attribute polylines
            #
            #   @return [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline>, nil]
            optional :polylines,
                     -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline] }

            # @!attribute stop_ids
            #
            #   @return [Array<String>, nil]
            optional :stop_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :stopIds

            # @!method initialize(id: nil, name: nil, polylines: nil, stop_ids: nil)
            #   @param id [String]
            #   @param name [OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name]
            #   @param polylines [Array<OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline>]
            #   @param stop_ids [Array<String>]

            # @see OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping#name
            class Name < OnebusawaySDK::Internal::Type::BaseModel
              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute names
              #
              #   @return [Array<String>, nil]
              optional :names, OnebusawaySDK::Internal::Type::ArrayOf[String]

              # @!attribute type
              #
              #   @return [String, nil]
              optional :type, String

              # @!method initialize(name: nil, names: nil, type: nil)
              #   @param name [String]
              #   @param names [Array<String>]
              #   @param type [String]
            end

            class Polyline < OnebusawaySDK::Internal::Type::BaseModel
              # @!attribute length
              #
              #   @return [Integer, nil]
              optional :length, Integer

              # @!attribute levels
              #
              #   @return [String, nil]
              optional :levels, String

              # @!attribute points
              #
              #   @return [String, nil]
              optional :points, String

              # @!method initialize(length: nil, levels: nil, points: nil)
              #   @param length [Integer]
              #   @param levels [String]
              #   @param points [String]
            end
          end
        end
      end
    end
  end
end
