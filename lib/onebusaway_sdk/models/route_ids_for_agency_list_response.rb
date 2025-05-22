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
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OnebusawaySDK::Internal::Type::Boolean, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<String>]
        required :list, OnebusawaySDK::Internal::Type::ArrayOf[String]

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::References }

        # @!method initialize(limit_exceeded:, list:, references:)
        #   @param limit_exceeded [Boolean]
        #   @param list [Array<String>]
        #   @param references [OnebusawaySDK::Models::References]
      end
    end
  end
end
