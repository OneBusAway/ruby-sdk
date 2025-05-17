# typed: strong

module OpenTransit
  module Models
    class ArrivalAndDepartureListParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::ArrivalAndDepartureListParams,
            OpenTransit::Internal::AnyHash
          )
        end

      # Include vehicles arriving or departing in the next n minutes.
      sig { returns(T.nilable(Integer)) }
      attr_reader :minutes_after

      sig { params(minutes_after: Integer).void }
      attr_writer :minutes_after

      # Include vehicles having arrived or departed in the previous n minutes.
      sig { returns(T.nilable(Integer)) }
      attr_reader :minutes_before

      sig { params(minutes_before: Integer).void }
      attr_writer :minutes_before

      # The specific time for querying the system status.
      sig { returns(T.nilable(Time)) }
      attr_reader :time

      sig { params(time: Time).void }
      attr_writer :time

      sig do
        params(
          minutes_after: Integer,
          minutes_before: Integer,
          time: Time,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Include vehicles arriving or departing in the next n minutes.
        minutes_after: nil,
        # Include vehicles having arrived or departed in the previous n minutes.
        minutes_before: nil,
        # The specific time for querying the system status.
        time: nil,
        request_options: {}
      )
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
