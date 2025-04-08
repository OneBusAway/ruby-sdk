# typed: strong

module OnebusawaySDK
  module Resources
    class ScheduleForStop
      # Get schedule for a specific stop
      sig do
        params(
          stop_id: String,
          date: Date,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Internal::AnyHash))
        )
          .returns(OnebusawaySDK::Models::ScheduleForStopRetrieveResponse)
      end
      def retrieve(
        # The stop id to request the schedule for, encoded directly in the URL
        stop_id,
        # The date for which you want to request a schedule in the format YYYY-MM-DD
        #   (optional, defaults to the current date)
        date: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
