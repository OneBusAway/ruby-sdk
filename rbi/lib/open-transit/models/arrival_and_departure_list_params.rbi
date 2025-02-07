# typed: strong

module OpenTransit
  module Models
    class ArrivalAndDepartureListParams < OpenTransit::BaseModel
      extend OpenTransit::RequestParameters::Converter
      include OpenTransit::RequestParameters

      sig { returns(T.nilable(Integer)) }
      attr_reader :minutes_after

      sig { params(minutes_after: Integer).void }
      attr_writer :minutes_after

      sig { returns(T.nilable(Integer)) }
      attr_reader :minutes_before

      sig { params(minutes_before: Integer).void }
      attr_writer :minutes_before

      sig { returns(T.nilable(Time)) }
      attr_reader :time

      sig { params(time: Time).void }
      attr_writer :time

      sig do
        params(
          minutes_after: Integer,
          minutes_before: Integer,
          time: Time,
          request_options: T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(minutes_after: nil, minutes_before: nil, time: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            minutes_after: Integer,
            minutes_before: Integer,
            time: Time,
            request_options: OpenTransit::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
