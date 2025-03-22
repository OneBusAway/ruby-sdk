# typed: strong

module OnebusawaySDK
  module Models
    class StopIDsForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .void
      end
      attr_writer :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[String]) }
        attr_accessor :list

        sig { returns(OnebusawaySDK::Models::References) }
        attr_reader :references

        sig { params(references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash)).void }
        attr_writer :references

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[String],
            references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash)
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
