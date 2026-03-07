# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::Stop#retrieve
    class StopRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute stop_id
      #
      #   @return [String]
      required :stop_id, String

      # @!method initialize(stop_id:, request_options: {})
      #   @param stop_id [String]
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
