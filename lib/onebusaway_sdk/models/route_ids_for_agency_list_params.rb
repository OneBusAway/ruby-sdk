# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::RouteIDsForAgency#list
    class RouteIDsForAgencyListParams < OnebusawaySDK::BaseModel
      # @!parse
      #   extend OnebusawaySDK::Type::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # @!parse
      #   # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
    end
  end
end
