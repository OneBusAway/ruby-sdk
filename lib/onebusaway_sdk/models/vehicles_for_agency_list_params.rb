# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::VehiclesForAgency#list
    class VehiclesForAgencyListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute time
      #   Specific time for querying the status (timestamp format)
      #
      #   @return [String, nil]
      optional :time, String

      # @!method initialize(time: nil, request_options: {})
      #   @param time [String]
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
