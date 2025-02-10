# typed: strong

module OnebusawaySDK
  module Models
    class CurrentTimeRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(OnebusawaySDK::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry,
            references: OnebusawaySDK::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
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

          sig { params(readable_time: String, time: Integer).void }
          def initialize(readable_time: nil, time: nil)
          end

          sig { override.returns({readable_time: String, time: Integer}) }
          def to_hash
          end
        end
      end
    end
  end
end
