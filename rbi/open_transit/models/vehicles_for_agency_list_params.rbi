# typed: strong

module OpenTransit
  module Models
    class VehiclesForAgencyListParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::VehiclesForAgencyListParams,
            OpenTransit::Internal::AnyHash
          )
        end

      # Specific time for querying the status (timestamp format)
      sig { returns(T.nilable(String)) }
      attr_reader :time

      sig { params(time: String).void }
      attr_writer :time

      sig do
        params(
          time: String,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specific time for querying the status (timestamp format)
        time: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { time: String, request_options: OpenTransit::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
