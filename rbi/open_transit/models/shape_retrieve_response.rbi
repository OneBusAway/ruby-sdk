# typed: strong

module OpenTransit
  module Models
    class ShapeRetrieveResponse < OpenTransit::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::Models::ShapeRetrieveResponse,
            OpenTransit::Internal::AnyHash
          )
        end

      sig { returns(OpenTransit::Models::ShapeRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: OpenTransit::Models::ShapeRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: OpenTransit::Models::ShapeRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OpenTransit::Models::ShapeRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OpenTransit::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OpenTransit::Models::ShapeRetrieveResponse::Data,
              OpenTransit::Internal::AnyHash
            )
          end

        sig { returns(OpenTransit::Models::ShapeRetrieveResponse::Data::Entry) }
        attr_reader :entry

        sig do
          params(
            entry:
              OpenTransit::Models::ShapeRetrieveResponse::Data::Entry::OrHash
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
              OpenTransit::Models::ShapeRetrieveResponse::Data::Entry::OrHash,
            references: OpenTransit::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OpenTransit::Models::ShapeRetrieveResponse::Data::Entry,
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
                OpenTransit::Models::ShapeRetrieveResponse::Data::Entry,
                OpenTransit::Internal::AnyHash
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
