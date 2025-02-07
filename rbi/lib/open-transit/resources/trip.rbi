# typed: strong

module OpenTransit
  module Resources
    class Trip
      sig do
        params(
          trip_id: String,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::TripRetrieveResponse)
      end
      def retrieve(trip_id, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
