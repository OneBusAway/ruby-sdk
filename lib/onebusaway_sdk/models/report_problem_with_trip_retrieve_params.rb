# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ReportProblemWithTrip#retrieve
    class ReportProblemWithTripRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      # @!parse
      #   extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute [r] code
      #   A string code identifying the nature of the problem
      #
      #   @return [Symbol, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code, nil]
      optional :code, enum: -> { OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code }

      # @!parse
      #   # @return [Symbol, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code]
      #   attr_writer :code

      # @!attribute [r] service_date
      #   The service date of the trip
      #
      #   @return [Integer, nil]
      optional :service_date, Integer, api_name: :serviceDate

      # @!parse
      #   # @return [Integer]
      #   attr_writer :service_date

      # @!attribute [r] stop_id
      #   A stop ID indicating where the user is experiencing the problem
      #
      #   @return [String, nil]
      optional :stop_id, String, api_name: :stopID

      # @!parse
      #   # @return [String]
      #   attr_writer :stop_id

      # @!attribute [r] user_comment
      #   Additional comment text supplied by the user describing the problem
      #
      #   @return [String, nil]
      optional :user_comment, String, api_name: :userComment

      # @!parse
      #   # @return [String]
      #   attr_writer :user_comment

      # @!attribute [r] user_lat
      #   The reporting user’s current latitude
      #
      #   @return [Float, nil]
      optional :user_lat, Float, api_name: :userLat

      # @!parse
      #   # @return [Float]
      #   attr_writer :user_lat

      # @!attribute [r] user_location_accuracy
      #   The reporting user’s location accuracy, in meters
      #
      #   @return [Float, nil]
      optional :user_location_accuracy, Float, api_name: :userLocationAccuracy

      # @!parse
      #   # @return [Float]
      #   attr_writer :user_location_accuracy

      # @!attribute [r] user_lon
      #   The reporting user’s current longitude
      #
      #   @return [Float, nil]
      optional :user_lon, Float, api_name: :userLon

      # @!parse
      #   # @return [Float]
      #   attr_writer :user_lon

      # @!attribute [r] user_on_vehicle
      #   Indicator if the user is on the transit vehicle experiencing the problem
      #
      #   @return [Boolean, nil]
      optional :user_on_vehicle, OnebusawaySDK::Internal::Type::BooleanModel, api_name: :userOnVehicle

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :user_on_vehicle

      # @!attribute [r] user_vehicle_number
      #   The vehicle number, as reported by the user
      #
      #   @return [String, nil]
      optional :user_vehicle_number, String, api_name: :userVehicleNumber

      # @!parse
      #   # @return [String]
      #   attr_writer :user_vehicle_number

      # @!attribute [r] vehicle_id
      #   The vehicle actively serving the trip
      #
      #   @return [String, nil]
      optional :vehicle_id, String, api_name: :vehicleID

      # @!parse
      #   # @return [String]
      #   attr_writer :vehicle_id

      # @!parse
      #   # @param code [Symbol, OnebusawaySDK::Models::ReportProblemWithTripRetrieveParams::Code]
      #   # @param service_date [Integer]
      #   # @param stop_id [String]
      #   # @param user_comment [String]
      #   # @param user_lat [Float]
      #   # @param user_location_accuracy [Float]
      #   # @param user_lon [Float]
      #   # @param user_on_vehicle [Boolean]
      #   # @param user_vehicle_number [String]
      #   # @param vehicle_id [String]
      #   # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     code: nil,
      #     service_date: nil,
      #     stop_id: nil,
      #     user_comment: nil,
      #     user_lat: nil,
      #     user_location_accuracy: nil,
      #     user_lon: nil,
      #     user_on_vehicle: nil,
      #     user_vehicle_number: nil,
      #     vehicle_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

      # A string code identifying the nature of the problem
      module Code
        extend OnebusawaySDK::Internal::Type::Enum

        VEHICLE_NEVER_CAME = :vehicle_never_came
        VEHICLE_CAME_EARLY = :vehicle_came_early
        VEHICLE_CAME_LATE = :vehicle_came_late
        WRONG_HEADSIGN = :wrong_headsign
        VEHICLE_DOES_NOT_STOP_HERE = :vehicle_does_not_stop_here
        OTHER = :other

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
