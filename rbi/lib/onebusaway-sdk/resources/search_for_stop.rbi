# typed: strong

module OnebusawaySDK
  module Resources
    class SearchForStop
      sig do
        params(
          input: String,
          max_count: Integer,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OnebusawaySDK::Models::SearchForStopListResponse)
      end
      def list(input:, max_count: nil, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).void }
      def initialize(client:)
      end
    end
  end
end
