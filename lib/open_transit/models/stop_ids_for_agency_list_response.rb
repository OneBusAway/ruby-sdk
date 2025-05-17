# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::StopIDsForAgency#list
    class StopIDsForAgencyListResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::StopIDsForAgencyListResponse::Data]
      required :data, -> { OpenTransit::Models::StopIDsForAgencyListResponse::Data }

      # @!method initialize(data:)
      #   @param data [OpenTransit::Models::StopIDsForAgencyListResponse::Data]

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
