# typed: strong

module OpenTransit
  module Resources
    class Config
      sig do
        params(
          request_options: T.nilable(
            T.any(
              OpenTransit::RequestOptions,
              T::Hash[Symbol,
                      T.anything]
            )
          )
        ).returns(OpenTransit::Models::ConfigRetrieveResponse)
      end
      def retrieve(request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
