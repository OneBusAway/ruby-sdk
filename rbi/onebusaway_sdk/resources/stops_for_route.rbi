# typed: strong

module OnebusawaySDK
  module Resources
    class StopsForRoute
      # Get stops for a specific route
      sig do
        params(
          route_id: String,
          include_polylines: T::Boolean,
          time: String,
          request_options: OnebusawaySDK::RequestOpts
        )
          .returns(OnebusawaySDK::Models::StopsForRouteListResponse)
      end
      def list(
        # ID of the route
        route_id,
        # Include polyline elements in the response (default true)
        include_polylines: nil,
        # Specify service date (YYYY-MM-DD or epoch) (default today)
        time: nil,
        request_options: {}
      ); end
      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
