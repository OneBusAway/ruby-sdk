# typed: strong

module OnebusawaySDK
  module Resources
    class Block
      # Get details of a specific block by ID
      sig do
        params(block_id: String, request_options: OnebusawaySDK::RequestOpts)
          .returns(OnebusawaySDK::Models::BlockRetrieveResponse)
      end
      def retrieve(
        # ID of the block
        block_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
