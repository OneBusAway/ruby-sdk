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

        sig { returns(T::Array[String]) }
        attr_accessor :list

        sig { returns(OnebusawaySDK::References) }
        attr_reader :references

        sig { params(references: OnebusawaySDK::References::OrHash).void }
        attr_writer :references

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :limit_exceeded

        sig { params(limit_exceeded: T::Boolean).void }
        attr_writer :limit_exceeded

        sig do
          params(
            list: T::Array[String],
            references: OnebusawaySDK::References::OrHash,
            limit_exceeded: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(list:, references:, limit_exceeded: nil)
        end

        sig do
          override.returns(
            {
              list: T::Array[String],
              references: OnebusawaySDK::References,
              limit_exceeded: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
