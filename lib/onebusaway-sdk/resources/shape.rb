# frozen_string_literal: true

module OnebusawaySDK
  module Resources
    class Shape
      # Retrieve a shape (the path traveled by a transit vehicle) by ID.
      #
      # @param shape_id [String] The shape ID, encoded directly in the URL
      #
      # @param params [OnebusawaySDK::Models::ShapeRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [OnebusawaySDK::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [OnebusawaySDK::Models::ShapeRetrieveResponse]
      def retrieve(shape_id, params = {})
        @client.request(
          method: :get,
          path: ["api/where/shape/%0s.json", shape_id],
          model: OnebusawaySDK::Models::ShapeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @param client [OnebusawaySDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
