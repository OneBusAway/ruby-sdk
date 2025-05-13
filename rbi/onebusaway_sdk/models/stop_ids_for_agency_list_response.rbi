# typed: strong

module OnebusawaySDK
  module Models
    class StopIDsForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::Models::StopIDsForAgencyListResponse,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig { returns(OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data) }
      attr_reader :data

      sig do
        params(
          data:
            OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data,
              OnebusawaySDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[String]) }
        attr_accessor :list

        sig { returns(OnebusawaySDK::References) }
        attr_reader :references

        sig { params(references: OnebusawaySDK::References::OrHash).void }
        attr_writer :references

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[String],
            references: OnebusawaySDK::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(limit_exceeded:, list:, references:)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list: T::Array[String],
              references: OnebusawaySDK::References
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
