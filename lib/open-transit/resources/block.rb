# frozen_string_literal: true

module OpenTransit
  module Resources
    class Block
      # Get details of a specific block by ID
      #
      # @param block_id [String] ID of the block
      #
      # @param params [OpenTransit::Models::BlockRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::BlockRetrieveResponse]
      #
      def retrieve(block_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/block/%0s.json", block_id],
          model: OpenTransit::Models::BlockRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @param client [OpenTransit::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
