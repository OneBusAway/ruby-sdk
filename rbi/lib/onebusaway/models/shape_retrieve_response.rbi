# typed: strong

module Onebusaway
  module Models
    class ShapeRetrieveResponse < Onebusaway::Models::ResponseWrapper
      sig { returns(Onebusaway::Models::ShapeRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: Onebusaway::Models::ShapeRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Onebusaway::Models::ShapeRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < Onebusaway::BaseModel
        sig { returns(Onebusaway::Models::ShapeRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(Onebusaway::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: Onebusaway::Models::ShapeRetrieveResponse::Data::Entry,
            references: Onebusaway::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: Onebusaway::Models::ShapeRetrieveResponse::Data::Entry,
              references: Onebusaway::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < Onebusaway::BaseModel
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
