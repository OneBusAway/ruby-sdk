# typed: strong

module OnebusawaySDK
  module Resources
    class Config
      # config
      sig do
        params(
          request_options: T.nilable(
            T.any(
              OnebusawaySDK::RequestOptions,
              OnebusawaySDK::Internal::AnyHash
            )
          )
        )
          .returns(OnebusawaySDK::Models::ConfigRetrieveResponse)
      end
      def retrieve(request_options: {}); end

      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
