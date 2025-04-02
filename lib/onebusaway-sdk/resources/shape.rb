# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Shape
      # Retrieve a shape (the path traveled by a transit vehicle) by ID.
      #
      # @overload retrieve(shape_id, request_options: {})
      #
      # @param shape_id [String]
      # @param request_options [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OnebusawaySDK::Models::ShapeRetrieveResponse]
      #
      # @see OnebusawaySDK::Models::ShapeRetrieveParams
      def retrieve(shape_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/shape/%1$s.json", shape_id],
          model: OnebusawaySDK::Models::ShapeRetrieveResponse,
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
