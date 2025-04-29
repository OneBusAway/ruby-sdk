# typed: strong

module OnebusawaySDK
  module Resources
    class Route
      # Retrieve information for a specific route identified by its unique ID.
      sig do
        params(
          route_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Internal::AnyHash))
        )
          .returns(OnebusawaySDK::Models::RouteRetrieveResponse)
      end
      def retrieve(
        # The ID of the route.
        route_id,
        request_options: {}
      ); end
      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
