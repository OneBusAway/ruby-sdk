# typed: strong

module OpenTransit
  module Resources
    class SearchForStop
      sig do
        params(
          input: String,
          max_count: Integer,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::SearchForStopListResponse)
      end
      def list(input:, max_count: nil, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
