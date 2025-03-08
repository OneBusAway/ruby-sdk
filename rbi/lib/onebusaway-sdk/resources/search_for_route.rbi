# typed: strong

module OnebusawaySDK
  module Resources
    class SearchForRoute
      sig do
        params(
          input: String,
          max_count: Integer,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::SearchForRouteListResponse)
      end
      def list(input:, max_count: nil, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
