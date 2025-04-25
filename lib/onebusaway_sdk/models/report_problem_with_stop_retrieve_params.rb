# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ReportProblemWithStop#retrieve
    class ReportProblemWithStopRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # @!attribute code
      #   A string code identifying the nature of the problem
      #
      #   @return [Symbol, OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code, nil]
      optional :code, enum: -> { OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code }

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

      # @!method initialize(code: nil, user_comment: nil, user_lat: nil, user_location_accuracy: nil, user_lon: nil, request_options: {})
      #   @param code [Symbol, OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code] A string code identifying the nature of the problem
      #
      #   @param user_comment [String] Additional comment text supplied by the user describing the problem
      #
      #   @param user_lat [Float] The reporting user’s current latitude
      #
      #   @param user_location_accuracy [Float] The reporting user’s location accuracy, in meters
      #
      #   @param user_lon [Float] The reporting user’s current longitude
      #
      #   @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}]

      # A string code identifying the nature of the problem
      module Code
        extend OnebusawaySDK::Internal::Type::Enum

        STOP_NAME_WRONG = :stop_name_wrong
        STOP_NUMBER_WRONG = :stop_number_wrong
        STOP_LOCATION_WRONG = :stop_location_wrong
        ROUTE_OR_TRIP_MISSING = :route_or_trip_missing
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
