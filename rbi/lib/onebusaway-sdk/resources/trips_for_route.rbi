# typed: strong

module OnebusawaySDK
  module Resources
    class TripsForRoute
      # Search for active trips for a specific route.
      sig do
        params(
          route_id: String,
          include_schedule: T::Boolean,
          include_status: T::Boolean,
          time: Integer,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Util::AnyHash))
        )
          .returns(OnebusawaySDK::Models::TripsForRouteListResponse)
      end
      def list(
        # The ID of the route.
        route_id,
        # Determine whether full schedule elements are included. Defaults to false.
        include_schedule: nil,
        # Determine whether full tripStatus elements with real-time information are
        #   included. Defaults to false.
        include_status: nil,
        # Query the system at a specific time. Useful for testing.
        time: nil,
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
