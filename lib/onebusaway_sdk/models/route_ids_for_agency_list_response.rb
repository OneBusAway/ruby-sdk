# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::RouteIDsForAgency#list
    class RouteIDsForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data]
      required :data, -> { OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute list
        #
        #   @return [Array<String>]
        required :list, OnebusawaySDK::Internal::Type::ArrayOf[String]

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::References }

        # @!attribute limit_exceeded
        #
        #   @return [Boolean, nil]
        optional :limit_exceeded, OnebusawaySDK::Internal::Type::Boolean, api_name: :limitExceeded

        # @!method initialize(list:, references:, limit_exceeded: nil)
        #   @param list [Array<String>]
        #   @param references [OnebusawaySDK::Models::References]
        #   @param limit_exceeded [Boolean]
      end
    end
  end
end
