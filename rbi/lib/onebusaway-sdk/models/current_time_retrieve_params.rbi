# typed: strong

module OnebusawaySDK
  module Models
    class CurrentTimeRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::Type::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig do
        params(request_options: T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(request_options: {})
      end

      sig { override.returns({request_options: OnebusawaySDK::RequestOptions}) }
      def to_hash
      end
    end
  end
end
