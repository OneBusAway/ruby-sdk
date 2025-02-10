# typed: strong

module OnebusawaySDK
  module Resources
    class Stop
      sig do
        params(
          stop_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OnebusawaySDK::Models::StopRetrieveResponse)
      end
      def retrieve(stop_id, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).void }
      def initialize(client:)
      end
    end
  end
end
