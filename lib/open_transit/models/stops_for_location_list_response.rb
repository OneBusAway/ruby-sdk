# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::StopsForLocation#list
    class StopsForLocationListResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::StopsForLocationListResponse::Data]
      required :data, -> { OpenTransit::Models::StopsForLocationListResponse::Data }

      # @!method initialize(data:)
      #   @param data [OpenTransit::Models::StopsForLocationListResponse::Data]

      class Data < OpenTransit::Internal::Type::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OpenTransit::Internal::Type::Boolean, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<OpenTransit::Models::StopsForLocationListResponse::Data::List>]
        required :list,
                 -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::StopsForLocationListResponse::Data::List] }

        # @!attribute references
        #
        #   @return [OpenTransit::References]
        required :references, -> { OpenTransit::References }

        # @!attribute out_of_range
        #
        #   @return [Boolean, nil]
        optional :out_of_range, OpenTransit::Internal::Type::Boolean, api_name: :outOfRange

        # @!method initialize(limit_exceeded:, list:, references:, out_of_range: nil)
        #   @param limit_exceeded [Boolean]
        #   @param list [Array<OpenTransit::Models::StopsForLocationListResponse::Data::List>]
        #   @param references [OpenTransit::References]
        #   @param out_of_range [Boolean]

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
