# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ScheduleForStop#retrieve
    class ScheduleForStopRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute stop_id
      #
      #   @return [String]
      required :stop_id, String

      # @!attribute date
      #   The date for which you want to request a schedule in the format YYYY-MM-DD
      #   (optional, defaults to the current date)
      #
      #   @return [Date, nil]
      optional :date, Date

      # @!method initialize(stop_id:, date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {OnebusawaySDK::Models::ScheduleForStopRetrieveParams} for more details.
      #
      #   @param stop_id [String]
      #
      #   @param date [Date] The date for which you want to request a schedule in the format YYYY-MM-DD (opti
      #
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
