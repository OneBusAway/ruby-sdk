# typed: strong

module OnebusawaySDK
  module Models
    class RoutesForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::RoutesForAgencyListResponse::Data) }
      def data
      end

      sig do
        params(_: T.any(OnebusawaySDK::Models::RoutesForAgencyListResponse::Data, OnebusawaySDK::Util::AnyHash))
          .returns(T.any(OnebusawaySDK::Models::RoutesForAgencyListResponse::Data, OnebusawaySDK::Util::AnyHash))
      end
      def data=(_)
      end

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::RoutesForAgencyListResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::RoutesForAgencyListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(T::Boolean) }
        def limit_exceeded
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def limit_exceeded=(_)
        end

        sig { returns(T::Array[OnebusawaySDK::Models::RoutesForAgencyListResponse::Data::List]) }
        def list
        end

        sig do
          params(_: T::Array[OnebusawaySDK::Models::RoutesForAgencyListResponse::Data::List])
            .returns(T::Array[OnebusawaySDK::Models::RoutesForAgencyListResponse::Data::List])
        end
        def list=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig do
          params(_: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash))
            .returns(T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash))
        end
        def references=(_)
        end

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[OnebusawaySDK::Models::RoutesForAgencyListResponse::Data::List],
            references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(limit_exceeded:, list:, references:)
        end

        sig do
          override
            .returns(
              {
                limit_exceeded: T::Boolean,
                list: T::Array[OnebusawaySDK::Models::RoutesForAgencyListResponse::Data::List],
                references: OnebusawaySDK::Models::References
              }
            )
        end
        def to_hash
        end

        class List < OnebusawaySDK::BaseModel
          sig { returns(String) }
          def id
          end

          sig { params(_: String).returns(String) }
          def id=(_)
          end

          sig { returns(String) }
          def agency_id
          end

          sig { params(_: String).returns(String) }
          def agency_id=(_)
          end

          sig { returns(Integer) }
          def type
          end

          sig { params(_: Integer).returns(Integer) }
          def type=(_)
          end

          sig { returns(T.nilable(String)) }
          def color
          end

          sig { params(_: String).returns(String) }
          def color=(_)
          end

          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: String).returns(String) }
          def description=(_)
          end

          sig { returns(T.nilable(String)) }
          def long_name
          end

          sig { params(_: String).returns(String) }
          def long_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def null_safe_short_name
          end

          sig { params(_: String).returns(String) }
          def null_safe_short_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def short_name
          end

          sig { params(_: String).returns(String) }
          def short_name=(_)
          end

          sig { returns(T.nilable(String)) }
          def text_color
          end

          sig { params(_: String).returns(String) }
          def text_color=(_)
          end

          sig { returns(T.nilable(String)) }
          def url
          end

          sig { params(_: String).returns(String) }
          def url=(_)
          end

          sig do
            params(
              id: String,
              agency_id: String,
              type: Integer,
              color: String,
              description: String,
              long_name: String,
              null_safe_short_name: String,
              short_name: String,
              text_color: String,
              url: String
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            agency_id:,
            type:,
            color: nil,
            description: nil,
            long_name: nil,
            null_safe_short_name: nil,
            short_name: nil,
            text_color: nil,
            url: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  agency_id: String,
                  type: Integer,
                  color: String,
                  description: String,
                  long_name: String,
                  null_safe_short_name: String,
                  short_name: String,
                  text_color: String,
                  url: String
                }
              )
          end
          def to_hash
          end
        end
      end
    end
  end
end
