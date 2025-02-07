# typed: strong

module OpenTransit
  module Resources
    class Block
      sig do
        params(
          block_id: String,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::BlockRetrieveResponse)
      end
      def retrieve(block_id, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
