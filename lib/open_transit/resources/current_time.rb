# frozen_string_literal: true

module OpenTransit
  module Resources
    class CurrentTime
      # current-time
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [OpenTransit::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [OpenTransit::Models::CurrentTimeRetrieveResponse]
      #
      # @see OpenTransit::Models::CurrentTimeRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "api/where/current-time.json",
          model: OpenTransit::Models::CurrentTimeRetrieveResponse,
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
