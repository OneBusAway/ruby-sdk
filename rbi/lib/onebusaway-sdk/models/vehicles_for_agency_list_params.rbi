# typed: strong

module OnebusawaySDK
  module Models
    class VehiclesForAgencyListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # Specific time for querying the status (timestamp format)
      sig { returns(T.nilable(String)) }
      def time
      end

      sig { params(_: String).returns(String) }
      def time=(_)
      end

      sig do
        params(
          time: String,
          request_options: T.any(
            OnebusawaySDK::RequestOptions,
            OnebusawaySDK::Util::AnyHash
          )
        )
          .returns(T.attached_class)
      end
      def self.new(time: nil, request_options: {})
      end

      sig { override.returns({time: String, request_options: OnebusawaySDK::RequestOptions}) }
      def to_hash
      end
    end
  end
end
