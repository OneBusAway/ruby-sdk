# frozen_string_literal: true

module Onebusaway
  module Models
    class VehiclesForAgencyListParams < Onebusaway::BaseModel
      # @!parse
      #   extend Onebusaway::RequestParameters::Converter
      include Onebusaway::RequestParameters

      # @!attribute [r] time
      #   Specific time for querying the status (timestamp format)
      #
      #   @return [String, nil]
      optional :time, String

      # @!parse
      #   # @return [String]
      #   attr_writer :time

      # @!parse
      #   # @param time [String]
      #   # @param request_options [Onebusaway::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(time: nil, request_options: {}, **) = super

      # def initialize: (Hash | Onebusaway::BaseModel) -> void
    end
  end
end
