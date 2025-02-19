# typed: strong

module OnebusawaySDK
  module Models
    class RouteRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::RouteRetrieveResponse::Data) }
      def data
      end

      sig do
        params(_: OnebusawaySDK::Models::RouteRetrieveResponse::Data)
          .returns(OnebusawaySDK::Models::RouteRetrieveResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::RouteRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::RouteRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::RouteRetrieveResponse::Data::Entry) }
        def entry
        end

        sig do
          params(_: OnebusawaySDK::Models::RouteRetrieveResponse::Data::Entry)
            .returns(OnebusawaySDK::Models::RouteRetrieveResponse::Data::Entry)
        end
        def entry=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig { params(_: OnebusawaySDK::Models::References).returns(OnebusawaySDK::Models::References) }
        def references=(_)
        end

        sig do
          params(
            entry: OnebusawaySDK::Models::RouteRetrieveResponse::Data::Entry,
            references: OnebusawaySDK::Models::References
          )
            .void
        end
        def initialize(entry:, references:)
        end

        sig do
          override
            .returns(
              {
                entry: OnebusawaySDK::Models::RouteRetrieveResponse::Data::Entry,
                references: OnebusawaySDK::Models::References
              }
            )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
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
              .void
          end
          def initialize(
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
