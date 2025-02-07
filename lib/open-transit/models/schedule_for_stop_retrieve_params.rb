# frozen_string_literal: true

module OpenTransit
  module Models
    class ScheduleForStopRetrieveParams < OpenTransit::BaseModel
      # @!parse
      #   extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      # @!attribute [r] date
      #   The date for which you want to request a schedule in the format YYYY-MM-DD
      #     (optional, defaults to the current date)
      #
      #   @return [Date, nil]
      optional :date, Date

      # @!parse
      #   # @return [Date]
      #   attr_writer :date

      # @!parse
      #   # @param date [Date]
      #   # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(date: nil, request_options: {}, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void
    end
  end
end
