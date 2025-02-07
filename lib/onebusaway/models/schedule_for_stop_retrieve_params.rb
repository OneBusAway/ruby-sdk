# frozen_string_literal: true

module Onebusaway
  module Models
    class ScheduleForStopRetrieveParams < Onebusaway::BaseModel
      # @!parse
      #   extend Onebusaway::RequestParameters::Converter
      include Onebusaway::RequestParameters

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
      #   # @param request_options [Onebusaway::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(date: nil, request_options: {}, **) = super

      # def initialize: (Hash | Onebusaway::BaseModel) -> void
    end
  end
end
