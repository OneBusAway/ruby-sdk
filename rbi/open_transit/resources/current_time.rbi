# typed: strong

module OpenTransit
  module Resources
    class CurrentTime
      # current-time
      sig do
        params(request_options: OpenTransit::RequestOptions::OrHash).returns(
          OpenTransit::Models::CurrentTimeRetrieveResponse
        )
      end
      def retrieve(request_options: {})
      end

      # @api private
      sig { params(client: OpenTransit::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
