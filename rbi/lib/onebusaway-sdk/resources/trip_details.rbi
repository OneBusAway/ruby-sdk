# typed: strong

module OnebusawaySDK
  module Resources
    class TripDetails
      sig do
        params(
          trip_id: String,
          include_schedule: T::Boolean,
          include_status: T::Boolean,
          include_trip: T::Boolean,
          service_date: Integer,
          time: Integer,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OnebusawaySDK::Models::TripDetailRetrieveResponse)
      end
      def retrieve(
        trip_id,
        include_schedule: nil,
        include_status: nil,
        include_trip: nil,
        service_date: nil,
        time: nil,
        request_options: {}
      )
      end

      sig { params(client: OnebusawaySDK::Client).void }
      def initialize(client:)
      end
    end
  end
end
