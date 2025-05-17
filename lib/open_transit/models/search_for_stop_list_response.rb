# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::SearchForStop#list
    class SearchForStopListResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::SearchForStopListResponse::Data, nil]
      optional :data, -> { OpenTransit::Models::SearchForStopListResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [OpenTransit::Models::SearchForStopListResponse::Data]

      class Data < OpenTransit::Internal::Type::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OpenTransit::Internal::Type::Boolean, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<OpenTransit::Models::SearchForStopListResponse::Data::List>]
        required :list,
                 -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::SearchForStopListResponse::Data::List] }

        # @!attribute out_of_range
        #
        #   @return [Boolean]
        required :out_of_range, OpenTransit::Internal::Type::Boolean, api_name: :outOfRange

        # @!attribute references
        #
        #   @return [OpenTransit::References]
        required :references, -> { OpenTransit::References }

        # @!method initialize(limit_exceeded:, list:, out_of_range:, references:)
        #   @param limit_exceeded [Boolean]
        #   @param list [Array<OpenTransit::Models::SearchForStopListResponse::Data::List>]
        #   @param out_of_range [Boolean]
        #   @param references [OpenTransit::References]

        class List < OpenTransit::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute lat
          #
          #   @return [Float]
          required :lat, Float

          # @!attribute location_type
          #
          #   @return [Integer]
          required :location_type, Integer, api_name: :locationType

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
          required :route_ids, OpenTransit::Internal::Type::ArrayOf[String], api_name: :routeIds

          # @!attribute static_route_ids
          #
          #   @return [Array<String>]
          required :static_route_ids, OpenTransit::Internal::Type::ArrayOf[String], api_name: :staticRouteIds

          # @!attribute code
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute direction
          #
          #   @return [String, nil]
          optional :direction, String

          # @!attribute wheelchair_boarding
          #
          #   @return [String, nil]
          optional :wheelchair_boarding, String, api_name: :wheelchairBoarding

          # @!method initialize(id:, lat:, location_type:, lon:, name:, parent:, route_ids:, static_route_ids:, code: nil, direction: nil, wheelchair_boarding: nil)
          #   @param id [String]
          #   @param lat [Float]
          #   @param location_type [Integer]
          #   @param lon [Float]
          #   @param name [String]
          #   @param parent [String]
          #   @param route_ids [Array<String>]
          #   @param static_route_ids [Array<String>]
          #   @param code [String]
          #   @param direction [String]
          #   @param wheelchair_boarding [String]
        end
      end
    end
  end
end
