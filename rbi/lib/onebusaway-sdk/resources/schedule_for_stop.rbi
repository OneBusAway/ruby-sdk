# typed: strong

module OnebusawaySDK
  module Resources
    class ScheduleForStop
      # Get schedule for a specific stop
      sig do
        params(
          stop_id: String,
          date: Date,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse)
      end
      def retrieve(stop_id, date: nil, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
