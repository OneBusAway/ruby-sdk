# frozen_string_literal: true

module OpenTransit
  module Resources
    class Shape
      # Retrieve a shape (the path traveled by a transit vehicle) by ID.
      #
      # @overload retrieve(shape_id, request_options: {})
      #
      # @param shape_id [String] The shape ID, encoded directly in the URL
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::ShapeRetrieveResponse]
      #
      # @see OpenTransit::Models::ShapeRetrieveParams
      def retrieve(shape_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/shape/%1$s.json", shape_id],
          model: OpenTransit::Models::ShapeRetrieveResponse,
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
