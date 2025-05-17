# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::StopsForRoute#list
    class StopsForRouteListResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::StopsForRouteListResponse::Data]
      required :data, -> { OpenTransit::Models::StopsForRouteListResponse::Data }

      # @!method initialize(data:)
      #   @param data [OpenTransit::Models::StopsForRouteListResponse::Data]

      class Data < OpenTransit::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::StopsForRouteListResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::StopsForRouteListResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OpenTransit::References]
        required :references, -> { OpenTransit::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OpenTransit::Models::StopsForRouteListResponse::Data::Entry]
        #   @param references [OpenTransit::References]

        # @see OpenTransit::Models::StopsForRouteListResponse::Data#entry
        class Entry < OpenTransit::Internal::Type::BaseModel
          # @!attribute polylines
          #
          #   @return [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline>, nil]
          optional :polylines,
                   -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline] }

          # @!attribute route_id
          #
          #   @return [String, nil]
          optional :route_id, String, api_name: :routeId

          # @!attribute stop_groupings
          #
          #   @return [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping>, nil]
          optional :stop_groupings,
                   -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping] },
                   api_name: :stopGroupings

          # @!attribute stop_ids
          #
          #   @return [Array<String>, nil]
          optional :stop_ids, OpenTransit::Internal::Type::ArrayOf[String], api_name: :stopIds

          # @!method initialize(polylines: nil, route_id: nil, stop_groupings: nil, stop_ids: nil)
          #   @param polylines [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline>]
          #   @param route_id [String]
          #   @param stop_groupings [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping>]
          #   @param stop_ids [Array<String>]

          class Polyline < OpenTransit::Internal::Type::BaseModel
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

          class StopGrouping < OpenTransit::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute name
            #
            #   @return [OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name, nil]
            optional :name, -> { OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name }

            # @!attribute polylines
            #
            #   @return [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline>, nil]
            optional :polylines,
                     -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline] }

            # @!attribute stop_ids
            #
            #   @return [Array<String>, nil]
            optional :stop_ids, OpenTransit::Internal::Type::ArrayOf[String], api_name: :stopIds

            # @!method initialize(id: nil, name: nil, polylines: nil, stop_ids: nil)
            #   @param id [String]
            #   @param name [OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name]
            #   @param polylines [Array<OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline>]
            #   @param stop_ids [Array<String>]

            # @see OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping#name
            class Name < OpenTransit::Internal::Type::BaseModel
              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute names
              #
              #   @return [Array<String>, nil]
              optional :names, OpenTransit::Internal::Type::ArrayOf[String]

              # @!attribute type
              #
              #   @return [String, nil]
              optional :type, String

              # @!method initialize(name: nil, names: nil, type: nil)
              #   @param name [String]
              #   @param names [Array<String>]
              #   @param type [String]
            end

            class Polyline < OpenTransit::Internal::Type::BaseModel
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
