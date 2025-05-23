# typed: strong

module OnebusawaySDK
  module Models
    class SearchForStopListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::SearchForStopListParams,
            OnebusawaySDK::Internal::AnyHash
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
          request_options: OnebusawaySDK::RequestOptions::OrHash
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
            request_options: OnebusawaySDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
