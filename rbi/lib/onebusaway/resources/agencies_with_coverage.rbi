# typed: strong

module Onebusaway
  module Resources
    class AgenciesWithCoverage
      sig do
        params(
          request_options: T.nilable(
            T.any(
              Onebusaway::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(Onebusaway::Models::AgenciesWithCoverageListResponse)
      end
      def list(request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
