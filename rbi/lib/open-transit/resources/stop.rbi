# typed: strong

module OpenTransit
  module Resources
    class Stop
      sig do
        params(
          stop_id: String,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::StopRetrieveResponse)
      end
      def retrieve(stop_id, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
