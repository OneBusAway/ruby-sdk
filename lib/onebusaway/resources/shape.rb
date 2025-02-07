# frozen_string_literal: true

module Onebusaway
  module Resources
    class Shape
      # Retrieve a shape (the path traveled by a transit vehicle) by ID.
      #
      # @param shape_id [String] The shape ID, encoded directly in the URL
      #
      # @param params [Onebusaway::Models::ShapeRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::ShapeRetrieveResponse]
      #
      def retrieve(shape_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/shape/%0s.json", shape_id],
          model: Onebusaway::Models::ShapeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @param client [Onebusaway::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
