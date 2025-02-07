# frozen_string_literal: true

module Onebusaway
  module Models
    class CurrentTimeRetrieveParams < Onebusaway::BaseModel
      # @!parse
      #   extend Onebusaway::RequestParameters::Converter
      include Onebusaway::RequestParameters

      # @!parse
      #   # @param request_options [Onebusaway::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Onebusaway::BaseModel) -> void
    end
  end
end
