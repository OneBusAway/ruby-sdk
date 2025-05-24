# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::AgenciesWithCoverage#list
    class AgenciesWithCoverageListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data]
      required :data, -> { OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OnebusawaySDK::Internal::Type::Boolean, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List>]
        required :list,
                 -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List] }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::References }

        # @!method initialize(limit_exceeded:, list:, references:)
        #   @param limit_exceeded [Boolean]
        #   @param list [Array<OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List>]
        #   @param references [OnebusawaySDK::Models::References]

        class List < OnebusawaySDK::Internal::Type::BaseModel
          # @!attribute agency_id
          #
          #   @return [String]
          required :agency_id, String, api_name: :agencyId

          # @!attribute lat
          #
          #   @return [Float]
          required :lat, Float

          # @!attribute lat_span
          #
          #   @return [Float]
          required :lat_span, Float, api_name: :latSpan

          # @!attribute lon
          #
          #   @return [Float]
          required :lon, Float

          # @!attribute lon_span
          #
          #   @return [Float]
          required :lon_span, Float, api_name: :lonSpan

          # @!method initialize(agency_id:, lat:, lat_span:, lon:, lon_span:)
          #   @param agency_id [String]
          #   @param lat [Float]
          #   @param lat_span [Float]
          #   @param lon [Float]
          #   @param lon_span [Float]
        end
      end
    end
  end
end
