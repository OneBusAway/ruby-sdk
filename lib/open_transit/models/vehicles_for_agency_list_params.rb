# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::VehiclesForAgency#list
    class VehiclesForAgencyListParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      # @!attribute time
      #   Specific time for querying the status (timestamp format)
      #
      #   @return [String, nil]
      optional :time, String

      # @!method initialize(time: nil, request_options: {})
      #   @param time [String] Specific time for querying the status (timestamp format)
      #
      #   @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
