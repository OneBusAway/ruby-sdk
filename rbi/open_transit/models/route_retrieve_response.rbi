# typed: strong

module OpenTransit
  module Models
    class RouteRetrieveResponse < OpenTransit::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::Models::RouteRetrieveResponse,
            OpenTransit::Internal::AnyHash
          )
        end

      sig { returns(OpenTransit::Models::RouteRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: OpenTransit::Models::RouteRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: OpenTransit::Models::RouteRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OpenTransit::Models::RouteRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OpenTransit::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OpenTransit::Models::RouteRetrieveResponse::Data,
              OpenTransit::Internal::AnyHash
            )
          end

        sig { returns(OpenTransit::Models::RouteRetrieveResponse::Data::Entry) }
        attr_reader :entry

        sig do
          params(
            entry:
              OpenTransit::Models::RouteRetrieveResponse::Data::Entry::OrHash
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
              OpenTransit::Models::RouteRetrieveResponse::Data::Entry::OrHash,
            references: OpenTransit::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OpenTransit::Models::RouteRetrieveResponse::Data::Entry,
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
                OpenTransit::Models::RouteRetrieveResponse::Data::Entry,
                OpenTransit::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :agency_id

          sig { returns(Integer) }
          attr_accessor :type

          sig { returns(T.nilable(String)) }
          attr_reader :color

          sig { params(color: String).void }
          attr_writer :color

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(String)) }
          attr_reader :long_name

          sig { params(long_name: String).void }
          attr_writer :long_name

          sig { returns(T.nilable(String)) }
          attr_reader :null_safe_short_name

          sig { params(null_safe_short_name: String).void }
          attr_writer :null_safe_short_name

          sig { returns(T.nilable(String)) }
          attr_reader :short_name

          sig { params(short_name: String).void }
          attr_writer :short_name

          sig { returns(T.nilable(String)) }
          attr_reader :text_color

          sig { params(text_color: String).void }
          attr_writer :text_color

          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(
              id: String,
              agency_id: String,
              type: Integer,
              color: String,
              description: String,
              long_name: String,
              null_safe_short_name: String,
              short_name: String,
              text_color: String,
              url: String
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            agency_id:,
            type:,
            color: nil,
            description: nil,
            long_name: nil,
            null_safe_short_name: nil,
            short_name: nil,
            text_color: nil,
            url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                agency_id: String,
                type: Integer,
                color: String,
                description: String,
                long_name: String,
                null_safe_short_name: String,
                short_name: String,
                text_color: String,
                url: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
