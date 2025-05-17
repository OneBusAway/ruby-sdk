# typed: strong

module OpenTransit
  module Models
    class SearchForStopListParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::SearchForStopListParams,
            OpenTransit::Internal::AnyHash
          )
        end

      # The string to search for.
      sig { returns(String) }
      attr_accessor :input

      # The max number of results to return. Defaults to 20.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_count

      sig { params(max_count: Integer).void }
      attr_writer :max_count

      sig do
        params(
          input: String,
          max_count: Integer,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The string to search for.
        input:,
        # The max number of results to return. Defaults to 20.
        max_count: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            input: String,
            max_count: Integer,
            request_options: OpenTransit::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
