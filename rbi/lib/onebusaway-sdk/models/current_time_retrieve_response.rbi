# typed: strong

module OnebusawaySDK
  module Models
    class CurrentTimeRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data) }
      def data
      end

      sig do
        params(_: T.any(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash))
          .returns(T.any(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash))
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry) }
        def entry
        end

        sig do
          params(
            _: T.any(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
          )
            .returns(
              T.any(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
            )
        end
        def entry=(_)
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
            entry: OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry,
            references: OnebusawaySDK::Models::References
          )
            .returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override
            .returns(
              {
                entry: OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry,
                references: OnebusawaySDK::Models::References
              }
            )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
          sig { returns(T.nilable(String)) }
          def readable_time
          end

          sig { params(_: String).returns(String) }
          def readable_time=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def time
          end

          sig { params(_: Integer).returns(Integer) }
          def time=(_)
          end

          sig { params(readable_time: String, time: Integer).returns(T.attached_class) }
          def self.new(readable_time: nil, time: nil)
          end

          sig { override.returns({readable_time: String, time: Integer}) }
          def to_hash
          end
        end
      end
    end
  end
end
