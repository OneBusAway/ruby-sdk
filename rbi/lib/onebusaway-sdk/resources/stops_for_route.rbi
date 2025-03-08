# typed: strong

module OnebusawaySDK
  module Resources
    class StopsForRoute
      sig do
        params(
          route_id: String,
          include_polylines: T::Boolean,
          time: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::StopsForRouteListResponse)
      end
      def list(route_id, include_polylines: nil, time: nil, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
