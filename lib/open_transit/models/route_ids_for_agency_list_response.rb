# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::RouteIDsForAgency#list
    class RouteIDsForAgencyListResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::RouteIDsForAgencyListResponse::Data]
      required :data, -> { OpenTransit::Models::RouteIDsForAgencyListResponse::Data }

      # @!method initialize(data:)
      #   @param data [OpenTransit::Models::RouteIDsForAgencyListResponse::Data]

      class Data < OpenTransit::Internal::Type::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OpenTransit::Internal::Type::Boolean, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<String>]
        required :list, OpenTransit::Internal::Type::ArrayOf[String]

        # @!attribute references
        #
        #   @return [OpenTransit::References]
        required :references, -> { OpenTransit::References }

        # @!method initialize(limit_exceeded:, list:, references:)
        #   @param limit_exceeded [Boolean]
        #   @param list [Array<String>]
        #   @param references [OpenTransit::References]
      end
    end
  end
end
