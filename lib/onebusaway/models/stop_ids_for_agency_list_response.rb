# frozen_string_literal: true

module Onebusaway
  module Models
    class StopIDsForAgencyListResponse < Onebusaway::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [Onebusaway::Models::StopIDsForAgencyListResponse::Data]
      required :data, -> { Onebusaway::Models::StopIDsForAgencyListResponse::Data }

      # @!parse
      #   # @param data [Onebusaway::Models::StopIDsForAgencyListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Onebusaway::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   limit_exceeded: Onebusaway::BooleanModel,
      #   list: -> { Onebusaway::ArrayOf[String] === _1 },
      #   references: Onebusaway::Models::References
      # }
      # ```
      class Data < Onebusaway::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, Onebusaway::BooleanModel, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<String>]
        required :list, Onebusaway::ArrayOf[String]

        # @!attribute references
        #
        #   @return [Onebusaway::Models::References]
        required :references, -> { Onebusaway::Models::References }

        # @!parse
        #   # @param limit_exceeded [Boolean]
        #   # @param list [Array<String>]
        #   # @param references [Onebusaway::Models::References]
        #   #
        #   def initialize(limit_exceeded:, list:, references:, **) = super

        # def initialize: (Hash | Onebusaway::BaseModel) -> void
      end
    end
  end
end
