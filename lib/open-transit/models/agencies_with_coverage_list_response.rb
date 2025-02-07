# frozen_string_literal: true

module OpenTransit
  module Models
    class AgenciesWithCoverageListResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::AgenciesWithCoverageListResponse::Data]
      required :data, -> { OpenTransit::Models::AgenciesWithCoverageListResponse::Data }

      # @!parse
      #   # @param data [OpenTransit::Models::AgenciesWithCoverageListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   limit_exceeded: OpenTransit::BooleanModel,
      #   list: -> { OpenTransit::ArrayOf[OpenTransit::Models::AgenciesWithCoverageListResponse::Data::List] === _1 },
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
        #   @return [Array<OpenTransit::Models::AgenciesWithCoverageListResponse::Data::List>]
        required :list,
                 -> {
                   OpenTransit::ArrayOf[OpenTransit::Models::AgenciesWithCoverageListResponse::Data::List]
                 }

        # @!attribute references
        #
        #   @return [OpenTransit::Models::References]
        required :references, -> { OpenTransit::Models::References }

        # @!parse
        #   # @param limit_exceeded [Boolean]
        #   # @param list [Array<OpenTransit::Models::AgenciesWithCoverageListResponse::Data::List>]
        #   # @param references [OpenTransit::Models::References]
        #   #
        #   def initialize(limit_exceeded:, list:, references:, **) = super

        # def initialize: (Hash | OpenTransit::BaseModel) -> void

        # @example
        # ```ruby
        # list => {
        #   agency_id: String,
        #   lat: Float,
        #   lat_span: Float,
        #   lon: Float,
        #   lon_span: Float
        # }
        # ```
        class List < OpenTransit::BaseModel
          # @!attribute agency_id
          #
          #   @return [String]
          required :agency_id, String, api_name: :agencyId

          # @!attribute lat
          #
          #   @return [Float]
          required :lat, Float

          # @!attribute lat_span
          #
          #   @return [Float]
          required :lat_span, Float, api_name: :latSpan

          # @!attribute lon
          #
          #   @return [Float]
          required :lon, Float

          # @!attribute lon_span
          #
          #   @return [Float]
          required :lon_span, Float, api_name: :lonSpan

          # @!parse
          #   # @param agency_id [String]
          #   # @param lat [Float]
          #   # @param lat_span [Float]
          #   # @param lon [Float]
          #   # @param lon_span [Float]
          #   #
          #   def initialize(agency_id:, lat:, lat_span:, lon:, lon_span:, **) = super

          # def initialize: (Hash | OpenTransit::BaseModel) -> void
        end
      end
    end
  end
end
