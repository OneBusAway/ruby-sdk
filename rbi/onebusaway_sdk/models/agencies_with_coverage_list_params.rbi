# typed: strong

module OnebusawaySDK
  module Models
    class AgenciesWithCoverageListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, OnebusawaySDK::Internal::AnyHash) }

      sig do
        params(request_options: OnebusawaySDK::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: OnebusawaySDK::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
