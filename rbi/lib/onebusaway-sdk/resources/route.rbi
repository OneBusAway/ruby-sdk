# typed: strong

module OnebusawaySDK
  module Resources
    class Route
      sig do
        params(
          route_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::RouteRetrieveResponse)
      end
      def retrieve(route_id, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
