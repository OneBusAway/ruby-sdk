# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::StopsForAgency#list
    class StopsForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute limit_exceeded
      #
      #   @return [Boolean]
      required :limit_exceeded, OnebusawaySDK::Internal::Type::Boolean, api_name: :limitExceeded

      # @!attribute list
      #
      #   @return [Array<OnebusawaySDK::Models::StopsForAgencyListResponse::List>]
      required :list,
               -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::StopsForAgencyListResponse::List] }

      # @!attribute references
      #
      #   @return [OnebusawaySDK::References]
      required :references, -> { OnebusawaySDK::References }

      # @!attribute out_of_range
      #
      #   @return [Boolean, nil]
      optional :out_of_range, OnebusawaySDK::Internal::Type::Boolean, api_name: :outOfRange

      # @!method initialize(limit_exceeded:, list:, references:, out_of_range: nil)
      #   @param limit_exceeded [Boolean]
      #   @param list [Array<OnebusawaySDK::Models::StopsForAgencyListResponse::List>]
      #   @param references [OnebusawaySDK::References]
      #   @param out_of_range [Boolean]

      class List < OnebusawaySDK::Internal::Type::BaseModel
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
        required :route_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :routeIds

        # @!attribute static_route_ids
        #
        #   @return [Array<String>]
        required :static_route_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :staticRouteIds

        # @!attribute code
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute direction
        #
        #   @return [String, nil]
        optional :direction, String

        # @!attribute location_type
        #
        #   @return [Integer, nil]
        optional :location_type, Integer, api_name: :locationType

        # @!attribute wheelchair_boarding
        #
        #   @return [String, nil]
        optional :wheelchair_boarding, String, api_name: :wheelchairBoarding

        # @!method initialize(id:, lat:, lon:, name:, parent:, route_ids:, static_route_ids:, code: nil, direction: nil, location_type: nil, wheelchair_boarding: nil)
        #   @param id [String]
        #   @param lat [Float]
        #   @param lon [Float]
        #   @param name [String]
        #   @param parent [String]
        #   @param route_ids [Array<String>]
        #   @param static_route_ids [Array<String>]
        #   @param code [String]
        #   @param direction [String]
        #   @param location_type [Integer]
        #   @param wheelchair_boarding [String]
      end
    end
  end
end
