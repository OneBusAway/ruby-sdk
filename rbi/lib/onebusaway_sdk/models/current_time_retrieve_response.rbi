# typed: strong

module OnebusawaySDK
  module Models
    class CurrentTimeRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .void
      end
      attr_writer :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry) }
        attr_reader :entry

        sig do
          params(
            entry: T.any(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
          )
            .void
        end
        attr_writer :entry

        sig { returns(OnebusawaySDK::Models::References) }
        attr_reader :references

        sig { params(references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash)).void }
        attr_writer :references

        sig do
          params(
            entry: T.any(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash),
            references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash)
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
          attr_reader :readable_time

          sig { params(readable_time: String).void }
          attr_writer :readable_time

          sig { returns(T.nilable(Integer)) }
          attr_reader :time

          sig { params(time: Integer).void }
          attr_writer :time

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
