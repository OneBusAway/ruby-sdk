# typed: strong

module OnebusawaySDK
  module Resources
    class ScheduleForRoute
      # Retrieve the full schedule for a route on a particular day
      sig do
        params(
          route_id: String,
          date: Date,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse)
      end
      def retrieve(
        # The route id to request the schedule for
        route_id,
        # The date for which you want to request a schedule in the format YYYY-MM-DD
        # (optional, defaults to current date)
        date: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
