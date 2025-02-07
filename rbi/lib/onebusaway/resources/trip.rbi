# typed: strong

module Onebusaway
  module Resources
    class Trip
      sig do
        params(
          trip_id: String,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::TripRetrieveResponse)
      end
      def retrieve(trip_id, request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
