# typed: strong

module OnebusawaySDK
  module Resources
    class ArrivalAndDeparture
      sig do
        params(
          stop_id: String,
          service_date: Integer,
          trip_id: String,
          stop_sequence: Integer,
          time: Integer,
          vehicle_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse)
      end
      def retrieve(
        stop_id,
        service_date:,
        trip_id:,
        stop_sequence: nil,
        time: nil,
        vehicle_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          stop_id: String,
          minutes_after: Integer,
          minutes_before: Integer,
          time: Time,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OnebusawaySDK::Models::ArrivalAndDepartureListResponse)
      end
      def list(stop_id, minutes_after: nil, minutes_before: nil, time: nil, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).void }
      def initialize(client:)
      end
    end
  end
end
