# frozen_string_literal: true

module OpenTransit
  module Models
    class ConfigRetrieveParams < OpenTransit::BaseModel
      # @!parse
      #   extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      # @!parse
      #   # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void
    end
  end
end
