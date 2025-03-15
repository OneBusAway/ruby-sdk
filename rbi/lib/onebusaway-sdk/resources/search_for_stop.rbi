# typed: strong

module OnebusawaySDK
  module Resources
    class SearchForStop
      # Search for a stop based on its name.
      sig do
        params(
          input: String,
          max_count: Integer,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::SearchForStopListResponse)
      end
      def list(
        # The string to search for.
        input:,
        # The max number of results to return. Defaults to 20.
        max_count: nil,
        request_options: {}
      )
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
