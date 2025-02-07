# frozen_string_literal: true

module OpenTransit
  module Models
    class ReportProblemWithStopRetrieveParams < OpenTransit::BaseModel
      # @!parse
      #   extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      # @!attribute [r] code
      #   A string code identifying the nature of the problem
      #
      #   @return [Symbol, OpenTransit::Models::ReportProblemWithStopRetrieveParams::Code, nil]
      optional :code, enum: -> { OpenTransit::Models::ReportProblemWithStopRetrieveParams::Code }

      # @!parse
      #   # @return [Symbol, OpenTransit::Models::ReportProblemWithStopRetrieveParams::Code]
      #   attr_writer :code

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

      # @!parse
      #   # @param code [Symbol, OpenTransit::Models::ReportProblemWithStopRetrieveParams::Code]
      #   # @param user_comment [String]
      #   # @param user_lat [Float]
      #   # @param user_location_accuracy [Float]
      #   # @param user_lon [Float]
      #   # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     code: nil,
      #     user_comment: nil,
      #     user_lat: nil,
      #     user_location_accuracy: nil,
      #     user_lon: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @abstract
      #
      # A string code identifying the nature of the problem
      #
      # @example
      # ```ruby
      # case code
      # in :stop_name_wrong
      #   # ...
      # in :stop_number_wrong
      #   # ...
      # in :stop_location_wrong
      #   # ...
      # in :route_or_trip_missing
      #   # ...
      # in :other
      #   # ...
      # end
      # ```
      class Code < OpenTransit::Enum
        STOP_NAME_WRONG = :stop_name_wrong
        STOP_NUMBER_WRONG = :stop_number_wrong
        STOP_LOCATION_WRONG = :stop_location_wrong
        ROUTE_OR_TRIP_MISSING = :route_or_trip_missing
        OTHER = :other

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
