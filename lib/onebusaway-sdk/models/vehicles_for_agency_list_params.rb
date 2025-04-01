# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class VehiclesForAgencyListParams < OnebusawaySDK::BaseModel
      # @!parse
      #   extend OnebusawaySDK::Type::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # @!attribute [r] time
      #   Specific time for querying the status (timestamp format)
      #
      #   @return [String, nil]
      optional :time, String

      # @!parse
      #   # @return [String]
      #   attr_writer :time

      # @!parse
      #   # @param time [String]
      #   # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(time: nil, request_options: {}, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
    end
  end
end
