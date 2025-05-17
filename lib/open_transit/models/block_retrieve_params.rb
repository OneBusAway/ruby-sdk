# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::Block#retrieve
    class BlockRetrieveParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
