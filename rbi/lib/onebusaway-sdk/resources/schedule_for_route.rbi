# typed: strong

module OnebusawaySDK
  module Resources
    class ScheduleForRoute
      sig do
        params(
          route_id: String,
          date: Date,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse)
      end
      def retrieve(route_id, date: nil, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
