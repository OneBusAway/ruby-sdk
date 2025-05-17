# typed: strong

module OpenTransit
  module Resources
    class Trip
      # Get details of a specific trip
      sig do
        params(
          trip_id: String,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(OpenTransit::Models::TripRetrieveResponse)
      end
      def retrieve(
        # ID of the trip
        trip_id,
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
