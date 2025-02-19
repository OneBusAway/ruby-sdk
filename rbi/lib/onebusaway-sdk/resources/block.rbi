# typed: strong

module OnebusawaySDK
  module Resources
    class Block
      sig do
        params(
          block_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::BlockRetrieveResponse)
      end
      def retrieve(block_id, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).void }
      def initialize(client:)
      end
    end
  end
end
