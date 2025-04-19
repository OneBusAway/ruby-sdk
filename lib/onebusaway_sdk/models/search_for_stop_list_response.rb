# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::SearchForStop#list
    class SearchForStopListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::SearchForStopListResponse::Data, nil]
      optional :data, -> { OnebusawaySDK::Models::SearchForStopListResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [OnebusawaySDK::Models::SearchForStopListResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OnebusawaySDK::Internal::Type::Boolean, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<OnebusawaySDK::Models::SearchForStopListResponse::Data::List>]
        required :list,
                 -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::SearchForStopListResponse::Data::List] }

        # @!attribute out_of_range
        #
        #   @return [Boolean]
        required :out_of_range, OnebusawaySDK::Internal::Type::Boolean, api_name: :outOfRange

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!method initialize(limit_exceeded:, list:, out_of_range:, references:)
        #   @param limit_exceeded [Boolean]
        #   @param list [Array<OnebusawaySDK::Models::SearchForStopListResponse::Data::List>]
        #   @param out_of_range [Boolean]
        #   @param references [OnebusawaySDK::Models::References]

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
          required :static_route_ids,
                   OnebusawaySDK::Internal::Type::ArrayOf[String],
                   api_name: :staticRouteIds

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
end
