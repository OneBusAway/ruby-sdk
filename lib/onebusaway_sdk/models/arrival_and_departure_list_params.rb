# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ArrivalAndDeparture#list
    class ArrivalAndDepartureListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute minutes_after
      #   Include vehicles arriving or departing in the next n minutes.
      #
      #   @return [Integer, nil]
      optional :minutes_after, Integer

      # @!attribute minutes_before
      #   Include vehicles having arrived or departed in the previous n minutes.
      #
      #   @return [Integer, nil]
      optional :minutes_before, Integer

      # @!attribute time
      #   The specific time for querying the system status.
      #
      #   @return [Time, nil]
      optional :time, Time

      # @!method initialize(minutes_after: nil, minutes_before: nil, time: nil, request_options: {})
      #   @param minutes_after [Integer]
      #   @param minutes_before [Integer]
      #   @param time [Time]
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
