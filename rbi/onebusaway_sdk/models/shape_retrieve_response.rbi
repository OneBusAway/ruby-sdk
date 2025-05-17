# typed: strong

module OnebusawaySDK
  module Models
    class ShapeRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::Models::ShapeRetrieveResponse,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig { returns(OnebusawaySDK::Models::ShapeRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: OnebusawaySDK::Models::ShapeRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: OnebusawaySDK::Models::ShapeRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OnebusawaySDK::Models::ShapeRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OnebusawaySDK::Models::ShapeRetrieveResponse::Data,
              OnebusawaySDK::Internal::AnyHash
            )
          end

        sig do
          returns(OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry)
        end
        attr_reader :entry

        sig do
          params(
            entry:
              OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry::OrHash
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
              OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry::OrHash,
            references: OnebusawaySDK::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry,
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
                OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry,
                OnebusawaySDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :length

          # Encoded polyline format representing the shape of the path
          sig { returns(String) }
          attr_accessor :points

          sig { returns(T.nilable(String)) }
          attr_reader :levels

          sig { params(levels: String).void }
          attr_writer :levels

          sig do
            params(length: Integer, points: String, levels: String).returns(
              T.attached_class
            )
          end
          def self.new(
            length:,
            # Encoded polyline format representing the shape of the path
            points:,
            levels: nil
          )
          end

          sig do
            override.returns(
              { length: Integer, points: String, levels: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
