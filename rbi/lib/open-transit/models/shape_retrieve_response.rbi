# typed: strong

module OpenTransit
  module Models
    class ShapeRetrieveResponse < OpenTransit::Models::ResponseWrapper
      sig { returns(OpenTransit::Models::ShapeRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: OpenTransit::Models::ShapeRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OpenTransit::Models::ShapeRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OpenTransit::BaseModel
        sig { returns(OpenTransit::Models::ShapeRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(OpenTransit::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: OpenTransit::Models::ShapeRetrieveResponse::Data::Entry,
            references: OpenTransit::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OpenTransit::Models::ShapeRetrieveResponse::Data::Entry,
              references: OpenTransit::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < OpenTransit::BaseModel
          sig { returns(Integer) }
          attr_accessor :length

          sig { returns(String) }
          attr_accessor :points

          sig { returns(T.nilable(String)) }
          attr_reader :levels

          sig { params(levels: String).void }
          attr_writer :levels

          sig { params(length: Integer, points: String, levels: String).void }
          def initialize(length:, points:, levels: nil)
          end

          sig { override.returns({length: Integer, points: String, levels: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
