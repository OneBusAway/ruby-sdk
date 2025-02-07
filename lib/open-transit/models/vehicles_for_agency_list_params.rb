# frozen_string_literal: true

module OpenTransit
  module Models
    class VehiclesForAgencyListParams < OpenTransit::BaseModel
      # @!parse
      #   extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

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
      #   # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(time: nil, request_options: {}, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void
    end
  end
end
