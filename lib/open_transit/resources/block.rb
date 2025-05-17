# frozen_string_literal: true

module OpenTransit
  module Resources
    class Block
      # Get details of a specific block by ID
      #
      # @overload retrieve(block_id, request_options: {})
      #
      # @param block_id [String] ID of the block
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::BlockRetrieveResponse]
      #
      # @see OpenTransit::Models::BlockRetrieveParams
      def retrieve(block_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/block/%1$s.json", block_id],
          model: OpenTransit::Models::BlockRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [OpenTransit::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
