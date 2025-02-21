# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class RouteIDsForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data]
      required :data, -> { OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

      class Data < OnebusawaySDK::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OnebusawaySDK::BooleanModel, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<String>]
        required :list, OnebusawaySDK::ArrayOf[String]

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param limit_exceeded [Boolean]
        #   # @param list [Array<String>]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(limit_exceeded:, list:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
      end
    end
  end
end
