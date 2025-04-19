# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ScheduleForStop#retrieve
    class ScheduleForStopRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute date
      #   The date for which you want to request a schedule in the format YYYY-MM-DD
      #   (optional, defaults to the current date)
      #
      #   @return [Date, nil]
      optional :date, Date

      # @!method initialize(date: nil, request_options: {})
      #   @param date [Date]
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
