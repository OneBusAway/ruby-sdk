# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::Stop#retrieve
    class StopRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      # @!parse
      #   extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!parse
      #   # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void
    end
  end
end
