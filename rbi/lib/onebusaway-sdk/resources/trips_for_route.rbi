# typed: strong

module OnebusawaySDK
  module Resources
    class TripsForRoute
      sig do
        params(
          route_id: String,
          include_schedule: T::Boolean,
          include_status: T::Boolean,
          time: Integer,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::TripsForRouteListResponse)
      end
      def list(route_id, include_schedule: nil, include_status: nil, time: nil, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
