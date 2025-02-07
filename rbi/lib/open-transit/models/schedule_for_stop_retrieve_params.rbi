# typed: strong

module OpenTransit
  module Models
    class ScheduleForStopRetrieveParams < OpenTransit::BaseModel
      extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      sig { returns(T.nilable(Date)) }
      attr_reader :date

      sig { params(date: Date).void }
      attr_writer :date

      sig do
        params(
          date: Date,
          request_options: T.any(
            OpenTransit::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(date: nil, request_options: {})
      end

      sig { override.returns({date: Date, request_options: OpenTransit::RequestOptions}) }
      def to_hash
      end
    end
  end
end
