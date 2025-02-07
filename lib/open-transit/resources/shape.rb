# frozen_string_literal: true

module OpenTransit
  module Resources
    class Shape
      # Retrieve a shape (the path traveled by a transit vehicle) by ID.
      #
      # @param shape_id [String] The shape ID, encoded directly in the URL
      #
      # @param params [OpenTransit::Models::ShapeRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OpenTransit::Models::ShapeRetrieveResponse]
      #
      def retrieve(shape_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/shape/%0s.json", shape_id],
          model: OpenTransit::Models::ShapeRetrieveResponse,
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
