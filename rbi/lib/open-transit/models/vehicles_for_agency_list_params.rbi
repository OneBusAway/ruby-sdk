# typed: strong

module OpenTransit
  module Models
    class VehiclesForAgencyListParams < OpenTransit::BaseModel
      extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :time

      sig { params(time: String).void }
      attr_writer :time

      sig do
        params(
          time: String,
          request_options: T.any(
            OpenTransit::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(time: nil, request_options: {})
      end

      sig { override.returns({time: String, request_options: OpenTransit::RequestOptions}) }
      def to_hash
      end
    end
  end
end
