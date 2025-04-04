# typed: strong

module OnebusawaySDK
  module Models
    class RouteIDsForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data, OnebusawaySDK::Internal::AnyHash)
        )
          .void
      end
      attr_writer :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data, OnebusawaySDK::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[String]) }
        attr_accessor :list

        sig { returns(OnebusawaySDK::Models::References) }
        attr_reader :references

        sig { params(references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Internal::AnyHash)).void }
        attr_writer :references

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[String],
            references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Internal::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(limit_exceeded:, list:, references:)
        end

        sig do
          override
            .returns(
              {limit_exceeded: T::Boolean, list: T::Array[String], references: OnebusawaySDK::Models::References}
            )
        end
        def to_hash
        end
      end
    end
  end
end
