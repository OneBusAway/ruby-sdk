# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class AgenciesWithCoverageListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data]
      required :data, -> { OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   limit_exceeded: OnebusawaySDK::BooleanModel,
      #   list: -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List] === _1 },
      #   references: OnebusawaySDK::Models::References
      # }
      # ```
      class Data < OnebusawaySDK::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OnebusawaySDK::BooleanModel, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List>]
        required :list,
                 -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List] }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param limit_exceeded [Boolean]
        #   # @param list [Array<OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List>]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(limit_exceeded:, list:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

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
        class List < OnebusawaySDK::BaseModel
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

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
        end
      end
    end
  end
end
