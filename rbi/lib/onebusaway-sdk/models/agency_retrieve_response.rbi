# typed: strong

module OnebusawaySDK
  module Models
    class AgencyRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::AgencyRetrieveResponse::Data) }
      def data
      end

      sig do
        params(_: T.any(OnebusawaySDK::Models::AgencyRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash))
          .returns(T.any(OnebusawaySDK::Models::AgencyRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash))
      end
      def data=(_)
      end

      sig do
        params(data: T.any(OnebusawaySDK::Models::AgencyRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::AgencyRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry) }
        def entry
        end

        sig do
          params(_: T.any(OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash))
            .returns(T.any(OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash))
        end
        def entry=(_)
        end

        sig { returns(T::Boolean) }
        def limit_exceeded
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def limit_exceeded=(_)
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
            entry: T.any(OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash),
            limit_exceeded: T::Boolean,
            references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(entry:, limit_exceeded:, references:)
        end

        sig do
          override
            .returns(
              {
                entry: OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry,
                limit_exceeded: T::Boolean,
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
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          sig { returns(String) }
          def timezone
          end

          sig { params(_: String).returns(String) }
          def timezone=(_)
          end

          sig { returns(String) }
          def url
          end

          sig { params(_: String).returns(String) }
          def url=(_)
          end

          sig { returns(T.nilable(String)) }
          def disclaimer
          end

          sig { params(_: String).returns(String) }
          def disclaimer=(_)
          end

          sig { returns(T.nilable(String)) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          sig { returns(T.nilable(String)) }
          def fare_url
          end

          sig { params(_: String).returns(String) }
          def fare_url=(_)
          end

          sig { returns(T.nilable(String)) }
          def lang
          end

          sig { params(_: String).returns(String) }
          def lang=(_)
          end

          sig { returns(T.nilable(String)) }
          def phone
          end

          sig { params(_: String).returns(String) }
          def phone=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def private_service
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def private_service=(_)
          end

          sig do
            params(
              id: String,
              name: String,
              timezone: String,
              url: String,
              disclaimer: String,
              email: String,
              fare_url: String,
              lang: String,
              phone: String,
              private_service: T::Boolean
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            name:,
            timezone:,
            url:,
            disclaimer: nil,
            email: nil,
            fare_url: nil,
            lang: nil,
            phone: nil,
            private_service: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  name: String,
                  timezone: String,
                  url: String,
                  disclaimer: String,
                  email: String,
                  fare_url: String,
                  lang: String,
                  phone: String,
                  private_service: T::Boolean
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
