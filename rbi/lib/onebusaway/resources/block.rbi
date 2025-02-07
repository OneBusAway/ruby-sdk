# typed: strong

module Onebusaway
  module Resources
    class Block
      sig do
        params(
          block_id: String,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::BlockRetrieveResponse)
      end
      def retrieve(block_id, request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
