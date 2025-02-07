# frozen_string_literal: true

module Onebusaway
  module Models
    class SearchForStopListParams < Onebusaway::BaseModel
      # @!parse
      #   extend Onebusaway::RequestParameters::Converter
      include Onebusaway::RequestParameters

      # @!attribute input
      #   The string to search for.
      #
      #   @return [String]
      required :input, String

      # @!attribute [r] max_count
      #   The max number of results to return. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :max_count, Integer, api_name: :maxCount

      # @!parse
      #   # @return [Integer]
      #   attr_writer :max_count

      # @!parse
      #   # @param input [String]
      #   # @param max_count [Integer]
      #   # @param request_options [Onebusaway::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(input:, max_count: nil, request_options: {}, **) = super

      # def initialize: (Hash | Onebusaway::BaseModel) -> void
    end
  end
end
