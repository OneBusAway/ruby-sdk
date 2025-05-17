# typed: strong

module OpenTransit
  module Models
    class CurrentTimeRetrieveResponse < OpenTransit::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::Models::CurrentTimeRetrieveResponse,
            OpenTransit::Internal::AnyHash
          )
        end

      sig { returns(OpenTransit::Models::CurrentTimeRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: OpenTransit::Models::CurrentTimeRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: OpenTransit::Models::CurrentTimeRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OpenTransit::Models::CurrentTimeRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OpenTransit::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OpenTransit::Models::CurrentTimeRetrieveResponse::Data,
              OpenTransit::Internal::AnyHash
            )
          end

        sig do
          returns(OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry)
        end
        attr_reader :entry

        sig do
          params(
            entry:
              OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry::OrHash
          ).void
        end
        attr_writer :entry

        sig { returns(OpenTransit::References) }
        attr_reader :references

        sig { params(references: OpenTransit::References::OrHash).void }
        attr_writer :references

        sig do
          params(
            entry:
              OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry::OrHash,
            references: OpenTransit::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry:
                OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry,
              references: OpenTransit::References
            }
          )
        end
        def to_hash
        end

        class Entry < OpenTransit::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry,
                OpenTransit::Internal::AnyHash
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
