# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ScheduleForStop#retrieve
    class ScheduleForStopRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      # @!parse
      #   extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute [r] date
      #   The date for which you want to request a schedule in the format YYYY-MM-DD
      #     (optional, defaults to the current date)
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

      # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void
    end
  end
end
