# typed: strong

module OpenTransit
  module Resources
    class Stop
      # Get details of a specific stop
      sig do
        params(
          stop_id: String,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(OpenTransit::Models::StopRetrieveResponse)
      end
      def retrieve(
        # ID of the stop
        stop_id,
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
