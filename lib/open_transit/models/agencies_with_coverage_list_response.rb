# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::AgenciesWithCoverage#list
    class AgenciesWithCoverageListResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::AgenciesWithCoverageListResponse::Data]
      required :data, -> { OpenTransit::Models::AgenciesWithCoverageListResponse::Data }

      # @!method initialize(data:)
      #   @param data [OpenTransit::Models::AgenciesWithCoverageListResponse::Data]

      class Data < OpenTransit::Internal::Type::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OpenTransit::Internal::Type::Boolean, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<OpenTransit::Models::AgenciesWithCoverageListResponse::Data::List>]
        required :list,
                 -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::AgenciesWithCoverageListResponse::Data::List] }

        # @!attribute references
        #
        #   @return [OpenTransit::References]
        required :references, -> { OpenTransit::References }

        # @!method initialize(limit_exceeded:, list:, references:)
        #   @param limit_exceeded [Boolean]
        #   @param list [Array<OpenTransit::Models::AgenciesWithCoverageListResponse::Data::List>]
        #   @param references [OpenTransit::References]

        class List < OpenTransit::Internal::Type::BaseModel
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

          # @!method initialize(agency_id:, lat:, lat_span:, lon:, lon_span:)
          #   @param agency_id [String]
          #   @param lat [Float]
          #   @param lat_span [Float]
          #   @param lon [Float]
          #   @param lon_span [Float]
        end
      end
    end
  end
end
