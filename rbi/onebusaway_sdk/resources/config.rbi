# typed: strong

module OnebusawaySDK
  module Resources
    class Config
      # config
      sig { params(request_options: OnebusawaySDK::RequestOpts).returns(OnebusawaySDK::Models::ConfigRetrieveResponse) }
      def retrieve(request_options: {}); end

      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
