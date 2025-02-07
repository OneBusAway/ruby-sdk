# typed: strong

module Onebusaway
  module Resources
    class CurrentTime
      sig do
        params(
          request_options: T.nilable(
            T.any(
              Onebusaway::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(Onebusaway::Models::CurrentTimeRetrieveResponse)
      end
      def retrieve(request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
