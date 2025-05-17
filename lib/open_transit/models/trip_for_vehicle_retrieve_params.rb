# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::TripForVehicle#retrieve
    class TripForVehicleRetrieveParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      # @!attribute include_schedule
      #   Determines whether full <schedule/> element is included in the <tripDetails/>
      #   section. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :include_schedule, OpenTransit::Internal::Type::Boolean

      # @!attribute include_status
      #   Determines whether the full <status/> element is included in the <tripDetails/>
      #   section. Defaults to true.
      #
      #   @return [Boolean, nil]
      optional :include_status, OpenTransit::Internal::Type::Boolean

      # @!attribute include_trip
      #   Determines whether full <trip/> element is included in the <references/>
      #   section. Defaults to false.
      #
      #   @return [Boolean, nil]
      optional :include_trip, OpenTransit::Internal::Type::Boolean

      # @!attribute time
      #   Time parameter to query the system at a specific time (optional).
      #
      #   @return [Integer, nil]
      optional :time, Integer

      # @!method initialize(include_schedule: nil, include_status: nil, include_trip: nil, time: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {OpenTransit::Models::TripForVehicleRetrieveParams} for more details.
      #
      #   @param include_schedule [Boolean] Determines whether full <schedule/> element is included in the <tripDetails/> se
      #
      #   @param include_status [Boolean] Determines whether the full <status/> element is included in the <tripDetails/>
      #
      #   @param include_trip [Boolean] Determines whether full <trip/> element is included in the <references/> section
      #
      #   @param time [Integer] Time parameter to query the system at a specific time (optional).
      #
      #   @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
