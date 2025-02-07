# typed: strong

module OpenTransit
  module Models
    class StopRetrieveParams < OpenTransit::BaseModel
      extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      sig { params(request_options: T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything])).void }
      def initialize(request_options: {})
      end

      sig { override.returns({request_options: OpenTransit::RequestOptions}) }
      def to_hash
      end
    end
  end
end
