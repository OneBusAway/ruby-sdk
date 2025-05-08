# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ReportProblemWithTrip#retrieve
    class ReportProblemWithTripRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute code
      #   A string code identifying the nature of the problem
      #
      #   @return [Symbol, OnebusawaySDK::ReportProblemWithTripRetrieveParams::Code, nil]
      optional :code, enum: -> { OnebusawaySDK::ReportProblemWithTripRetrieveParams::Code }

      # @!attribute service_date
      #   The service date of the trip
      #
      #   @return [Integer, nil]
      optional :service_date, Integer

      # @!attribute stop_id
      #   A stop ID indicating where the user is experiencing the problem
      #
      #   @return [String, nil]
      optional :stop_id, String

      # @!attribute user_comment
      #   Additional comment text supplied by the user describing the problem
      #
      #   @return [String, nil]
      optional :user_comment, String

      # @!attribute user_lat
      #   The reporting user’s current latitude
      #
      #   @return [Float, nil]
      optional :user_lat, Float

      # @!attribute user_location_accuracy
      #   The reporting user’s location accuracy, in meters
      #
      #   @return [Float, nil]
      optional :user_location_accuracy, Float

      # @!attribute user_lon
      #   The reporting user’s current longitude
      #
      #   @return [Float, nil]
      optional :user_lon, Float

      # @!attribute user_on_vehicle
      #   Indicator if the user is on the transit vehicle experiencing the problem
      #
      #   @return [Boolean, nil]
      optional :user_on_vehicle, OnebusawaySDK::Internal::Type::Boolean

      # @!attribute user_vehicle_number
      #   The vehicle number, as reported by the user
      #
      #   @return [String, nil]
      optional :user_vehicle_number, String

      # @!attribute vehicle_id
      #   The vehicle actively serving the trip
      #
      #   @return [String, nil]
      optional :vehicle_id, String

      # @!method initialize(code: nil, service_date: nil, stop_id: nil, user_comment: nil, user_lat: nil, user_location_accuracy: nil, user_lon: nil, user_on_vehicle: nil, user_vehicle_number: nil, vehicle_id: nil, request_options: {})
      #   @param code [Symbol, OnebusawaySDK::ReportProblemWithTripRetrieveParams::Code] A string code identifying the nature of the problem
      #
      #   @param service_date [Integer] The service date of the trip
      #
      #   @param stop_id [String] A stop ID indicating where the user is experiencing the problem
      #
      #   @param user_comment [String] Additional comment text supplied by the user describing the problem
      #
      #   @param user_lat [Float] The reporting user’s current latitude
      #
      #   @param user_location_accuracy [Float] The reporting user’s location accuracy, in meters
      #
      #   @param user_lon [Float] The reporting user’s current longitude
      #
      #   @param user_on_vehicle [Boolean] Indicator if the user is on the transit vehicle experiencing the problem
      #
      #   @param user_vehicle_number [String] The vehicle number, as reported by the user
      #
      #   @param vehicle_id [String] The vehicle actively serving the trip
      #
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]

      # A string code identifying the nature of the problem
      module Code
        extend OnebusawaySDK::Internal::Type::Enum

        VEHICLE_NEVER_CAME = :vehicle_never_came
        VEHICLE_CAME_EARLY = :vehicle_came_early
        VEHICLE_CAME_LATE = :vehicle_came_late
        WRONG_HEADSIGN = :wrong_headsign
        VEHICLE_DOES_NOT_STOP_HERE = :vehicle_does_not_stop_here
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
