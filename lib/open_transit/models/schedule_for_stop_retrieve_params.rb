# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::ScheduleForStop#retrieve
    class ScheduleForStopRetrieveParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      # @!attribute date
      #   The date for which you want to request a schedule in the format YYYY-MM-DD
      #   (optional, defaults to the current date)
      #
      #   @return [Date, nil]
      optional :date, Date

      # @!method initialize(date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {OpenTransit::Models::ScheduleForStopRetrieveParams} for more details.
      #
      #   @param date [Date] The date for which you want to request a schedule in the format YYYY-MM-DD (opti
      #
      #   @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
