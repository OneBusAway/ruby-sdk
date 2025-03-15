# typed: strong

module OnebusawaySDK
  module Models
    class RouteIDsForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data) }
      def data
      end

      sig do
        params(_: OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data)
          .returns(OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::RouteIDsForAgencyListResponse::Data}) }
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
          params(limit_exceeded: T::Boolean, list: T::Array[String], references: OnebusawaySDK::Models::References)
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
