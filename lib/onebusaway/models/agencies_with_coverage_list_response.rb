# frozen_string_literal: true

module Onebusaway
  module Models
    class AgenciesWithCoverageListResponse < Onebusaway::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [Onebusaway::Models::AgenciesWithCoverageListResponse::Data]
      required :data, -> { Onebusaway::Models::AgenciesWithCoverageListResponse::Data }

      # @!parse
      #   # @param data [Onebusaway::Models::AgenciesWithCoverageListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Onebusaway::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   limit_exceeded: Onebusaway::BooleanModel,
      #   list: -> { Onebusaway::ArrayOf[Onebusaway::Models::AgenciesWithCoverageListResponse::Data::List] === _1 },
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
        #   @return [Array<Onebusaway::Models::AgenciesWithCoverageListResponse::Data::List>]
        required :list,
                 -> { Onebusaway::ArrayOf[Onebusaway::Models::AgenciesWithCoverageListResponse::Data::List] }

        # @!attribute references
        #
        #   @return [Onebusaway::Models::References]
        required :references, -> { Onebusaway::Models::References }

        # @!parse
        #   # @param limit_exceeded [Boolean]
        #   # @param list [Array<Onebusaway::Models::AgenciesWithCoverageListResponse::Data::List>]
        #   # @param references [Onebusaway::Models::References]
        #   #
        #   def initialize(limit_exceeded:, list:, references:, **) = super

        # def initialize: (Hash | Onebusaway::BaseModel) -> void

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
        class List < Onebusaway::BaseModel
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

          # def initialize: (Hash | Onebusaway::BaseModel) -> void
        end
      end
    end
  end
end
