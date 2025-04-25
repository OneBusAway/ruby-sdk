# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::TripDetails#retrieve
    class TripDetailRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute include_schedule
      #   Whether to include the full schedule element in the tripDetails section
      #   (defaults to true).
      #
      #   @return [Boolean, nil]
      optional :include_schedule, OnebusawaySDK::Internal::Type::Boolean

      # @!attribute include_status
      #   Whether to include the full status element in the tripDetails section (defaults
      #   to true).
      #
      #   @return [Boolean, nil]
      optional :include_status, OnebusawaySDK::Internal::Type::Boolean

      # @!attribute include_trip
      #   Whether to include the full trip element in the references section (defaults to
      #   true).
      #
      #   @return [Boolean, nil]
      optional :include_trip, OnebusawaySDK::Internal::Type::Boolean

      # @!attribute service_date
      #   Service date for the trip as Unix time in milliseconds (optional).
      #
      #   @return [Integer, nil]
      optional :service_date, Integer

      # @!attribute time
      #   Time parameter to query the system at a specific time (optional).
      #
      #   @return [Integer, nil]
      optional :time, Integer

      # @!method initialize(include_schedule: nil, include_status: nil, include_trip: nil, service_date: nil, time: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {OnebusawaySDK::Models::TripDetailRetrieveParams} for more details.
      #
      #   @param include_schedule [Boolean] Whether to include the full schedule element in the tripDetails section (default
      #   ...
      #
      #   @param include_status [Boolean] Whether to include the full status element in the tripDetails section (defaults
      #   ...
      #
      #   @param include_trip [Boolean] Whether to include the full trip element in the references section (defaults to
      #   ...
      #
      #   @param service_date [Integer] Service date for the trip as Unix time in milliseconds (optional).
      #
      #   @param time [Integer] Time parameter to query the system at a specific time (optional).
      #
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
