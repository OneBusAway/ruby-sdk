# typed: strong

module OpenTransit
  module Resources
    class AgenciesWithCoverage
      sig do
        params(
          request_options: T.nilable(
            T.any(
              OpenTransit::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(OpenTransit::Models::AgenciesWithCoverageListResponse)
      end
      def list(request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
