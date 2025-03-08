# typed: strong

module OnebusawaySDK
  module Models
    class ShapeRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::ShapeRetrieveResponse::Data) }
      def data
      end

      sig do
        params(_: OnebusawaySDK::Models::ShapeRetrieveResponse::Data)
          .returns(OnebusawaySDK::Models::ShapeRetrieveResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::ShapeRetrieveResponse::Data).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::ShapeRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry) }
        def entry
        end

        sig do
          params(_: OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry)
            .returns(OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry)
        end
        def entry=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig { params(_: OnebusawaySDK::Models::References).returns(OnebusawaySDK::Models::References) }
        def references=(_)
        end

        sig do
          params(
            entry: OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry,
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
                entry: OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry,
                references: OnebusawaySDK::Models::References
              }
            )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
          sig { returns(Integer) }
          def length
          end

          sig { params(_: Integer).returns(Integer) }
          def length=(_)
          end

          sig { returns(String) }
          def points
          end

          sig { params(_: String).returns(String) }
          def points=(_)
          end

          sig { returns(T.nilable(String)) }
          def levels
          end

          sig { params(_: String).returns(String) }
          def levels=(_)
          end

          sig { params(length: Integer, points: String, levels: String).returns(T.attached_class) }
          def self.new(length:, points:, levels: nil)
          end

          sig { override.returns({length: Integer, points: String, levels: String}) }
          def to_hash
          end
        end
      end
    end
  end
end
