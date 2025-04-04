# typed: strong

module OnebusawaySDK
  module Models
    class ShapeRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::ShapeRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::ShapeRetrieveResponse::Data, OnebusawaySDK::Internal::Util::AnyHash)
        )
          .void
      end
      attr_writer :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::ShapeRetrieveResponse::Data, OnebusawaySDK::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::ShapeRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry) }
        attr_reader :entry

        sig do
          params(
            entry: T.any(OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry, OnebusawaySDK::Internal::Util::AnyHash)
          )
            .void
        end
        attr_writer :entry

        sig { returns(OnebusawaySDK::Models::References) }
        attr_reader :references

        sig { params(references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Internal::Util::AnyHash)).void }
        attr_writer :references

        sig do
          params(
            entry: T.any(OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry, OnebusawaySDK::Internal::Util::AnyHash),
            references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Internal::Util::AnyHash)
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
          attr_accessor :length

          # Encoded polyline format representing the shape of the path
          sig { returns(String) }
          attr_accessor :points

          sig { returns(T.nilable(String)) }
          attr_reader :levels

          sig { params(levels: String).void }
          attr_writer :levels

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
