# typed: strong

module Onebusaway
  module Models
    class VehiclesForAgencyListParams < Onebusaway::BaseModel
      extend Onebusaway::RequestParameters::Converter
      include Onebusaway::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_reader :time

      sig { params(time: String).void }
      attr_writer :time

      sig do
        params(
          time: String,
          request_options: T.any(
            Onebusaway::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(time: nil, request_options: {})
      end

      sig { override.returns({time: String, request_options: Onebusaway::RequestOptions}) }
      def to_hash
      end
    end
  end
end
