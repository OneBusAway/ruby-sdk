# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::StopIDsForAgency#list
    class StopIDsForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data]
      required :data, -> { OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OnebusawaySDK::Internal::Type::BooleanModel, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<String>]
        required :list, OnebusawaySDK::Internal::Type::ArrayOf[String]

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

        # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void
      end
    end
  end
end
