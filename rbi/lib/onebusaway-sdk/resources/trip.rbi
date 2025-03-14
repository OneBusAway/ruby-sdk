# typed: strong

module OnebusawaySDK
  module Resources
    class Trip
      sig do
        params(
          trip_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::TripRetrieveResponse)
      end
      def retrieve(trip_id, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).void }
      def initialize(client:)
      end
    end
  end
end
