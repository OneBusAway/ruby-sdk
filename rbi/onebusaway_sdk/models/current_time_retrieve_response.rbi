# typed: strong

module OnebusawaySDK
  module Models
    class CurrentTimeRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::Models::CurrentTimeRetrieveResponse,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig { returns(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data,
              OnebusawaySDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry
          )
        end
        attr_reader :entry

        sig do
          params(
            entry:
              OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry::OrHash
          ).void
        end
        attr_writer :entry

        sig { returns(OnebusawaySDK::References) }
        attr_reader :references

        sig { params(references: OnebusawaySDK::References::OrHash).void }
        attr_writer :references

        sig do
          params(
            entry:
              OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry::OrHash,
            references: OnebusawaySDK::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry:
                OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry,
              references: OnebusawaySDK::References
            }
          )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry,
                OnebusawaySDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :readable_time

          sig { params(readable_time: String).void }
          attr_writer :readable_time

          sig { returns(T.nilable(Integer)) }
          attr_reader :time

          sig { params(time: Integer).void }
          attr_writer :time

          sig do
            params(readable_time: String, time: Integer).returns(
              T.attached_class
            )
          end
          def self.new(readable_time: nil, time: nil)
          end

          sig { override.returns({ readable_time: String, time: Integer }) }
          def to_hash
          end
        end
      end
    end
  end
end
