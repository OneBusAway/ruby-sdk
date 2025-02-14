# typed: strong

module OnebusawaySDK
  module Models
    class StopIDsForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data) }
      def data
      end

      sig do
        params(_: OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data).returns(OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::StopIDsForAgencyListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(T::Boolean) }
        def limit_exceeded
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def limit_exceeded=(_)
        end

        sig { returns(T::Array[String]) }
        def list
        end

        sig { params(_: T::Array[String]).returns(T::Array[String]) }
        def list=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig { params(_: OnebusawaySDK::Models::References).returns(OnebusawaySDK::Models::References) }
        def references=(_)
        end

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[String],
            references: OnebusawaySDK::Models::References
          ).void
        end
        def initialize(limit_exceeded:, list:, references:)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list: T::Array[String],
              references: OnebusawaySDK::Models::References
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
