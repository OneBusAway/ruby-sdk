# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class ScheduleForRouteRetrieveParams < OnebusawaySDK::BaseModel
      # @!parse
      #   extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # @!attribute [r] date
      #   The date for which you want to request a schedule in the format YYYY-MM-DD
      #     (optional, defaults to current date)
      #
      #   @return [Date, nil]
      optional :date, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :date

      # @!parse
      #   # @param date [Date]
      #   # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(date: nil, request_options: {}, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
    end
  end
end
