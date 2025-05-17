# typed: strong

module OpenTransit
  module Resources
    class Block
      # Get details of a specific block by ID
      sig do
        params(
          block_id: String,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(OpenTransit::Models::BlockRetrieveResponse)
      end
      def retrieve(
        # ID of the block
        block_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: OpenTransit::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
