# frozen_string_literal: true

module OpenTransit
  module Models
    class RouteIDsForAgencyListResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::RouteIDsForAgencyListResponse::Data]
      required :data, -> { OpenTransit::Models::RouteIDsForAgencyListResponse::Data }

      # @!parse
      #   # @param data [OpenTransit::Models::RouteIDsForAgencyListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   limit_exceeded: OpenTransit::BooleanModel,
      #   list: -> { OpenTransit::ArrayOf[String] === _1 },
      #   references: OpenTransit::Models::References
      # }
      # ```
      class Data < OpenTransit::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OpenTransit::BooleanModel, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<String>]
        required :list, OpenTransit::ArrayOf[String]

        # @!attribute references
        #
        #   @return [OpenTransit::Models::References]
        required :references, -> { OpenTransit::Models::References }

        # @!parse
        #   # @param limit_exceeded [Boolean]
        #   # @param list [Array<String>]
        #   # @param references [OpenTransit::Models::References]
        #   #
        #   def initialize(limit_exceeded:, list:, references:, **) = super

        # def initialize: (Hash | OpenTransit::BaseModel) -> void
      end
    end
  end
end
