# typed: strong

module OnebusawaySDK
  module Resources
    class Config
      sig do
        params(request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(OnebusawaySDK::Models::ConfigRetrieveResponse)
      end
      def retrieve(request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).void }
      def initialize(client:)
      end
    end
  end
end
