# typed: strong

module OnebusawaySDK
  module Resources
    class Stop
      # Get details of a specific stop
      sig do
        params(
          stop_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::StopRetrieveResponse)
      end
      def retrieve(stop_id, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
