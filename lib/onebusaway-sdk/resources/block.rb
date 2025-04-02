# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Block
      # Get details of a specific block by ID
      #
      # @param block_id [String] ID of the block
      #
      # @param params [OnebusawaySDK::Models::BlockRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::BlockRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::BlockRetrieveParams
      def retrieve(block_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/block/%1$s.json", block_id],
          model: OnebusawaySDK::Models::BlockRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [OnebusawaySDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
