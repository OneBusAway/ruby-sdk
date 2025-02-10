# typed: strong

module OnebusawaySDK
  module Resources
    class ScheduleForStop
      sig do
        params(
          stop_id: String,
          date: Date,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse)
      end
      def retrieve(stop_id, date: nil, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).void }
      def initialize(client:)
      end
    end
  end
end
