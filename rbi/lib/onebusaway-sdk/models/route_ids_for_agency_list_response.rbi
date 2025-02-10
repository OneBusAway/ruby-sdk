# typed: strong

module OnebusawaySDK
  module Models
    class RouteIDsForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data) }
      attr_accessor :data

      sig { params(data: OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[String]) }
        attr_accessor :list

        sig { returns(OnebusawaySDK::Models::References) }
        attr_accessor :references

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
