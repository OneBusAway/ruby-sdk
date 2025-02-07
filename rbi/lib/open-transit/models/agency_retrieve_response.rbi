# typed: strong

module OpenTransit
  module Models
    class AgencyRetrieveResponse < OpenTransit::Models::ResponseWrapper
      sig { returns(OpenTransit::Models::AgencyRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: OpenTransit::Models::AgencyRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OpenTransit::Models::AgencyRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OpenTransit::BaseModel
        sig { returns(OpenTransit::Models::AgencyRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(OpenTransit::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: OpenTransit::Models::AgencyRetrieveResponse::Data::Entry,
            limit_exceeded: T::Boolean,
            references: OpenTransit::Models::References
          ).void
        end
        def initialize(entry:, limit_exceeded:, references:)
        end

        sig do
          override.returns(
            {
              entry: OpenTransit::Models::AgencyRetrieveResponse::Data::Entry,
              limit_exceeded: T::Boolean,
              references: OpenTransit::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < OpenTransit::BaseModel
          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :name

          sig { returns(String) }
          attr_accessor :timezone

          sig { returns(String) }
          attr_accessor :url

          sig { returns(T.nilable(String)) }
          attr_reader :disclaimer

          sig { params(disclaimer: String).void }
          attr_writer :disclaimer

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          sig { returns(T.nilable(String)) }
          attr_reader :fare_url

          sig { params(fare_url: String).void }
          attr_writer :fare_url

          sig { returns(T.nilable(String)) }
          attr_reader :lang

          sig { params(lang: String).void }
          attr_writer :lang

          sig { returns(T.nilable(String)) }
          attr_reader :phone

          sig { params(phone: String).void }
          attr_writer :phone

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :private_service

          sig { params(private_service: T::Boolean).void }
          attr_writer :private_service

          sig do
            params(
              id: String,
              name: String,
              timezone: String,
              url: String,
              disclaimer: String,
              email: String,
              fare_url: String,
              lang: String,
              phone: String,
              private_service: T::Boolean
            ).void
          end
          def initialize(
            id:,
            name:,
            timezone:,
            url:,
            disclaimer: nil,
            email: nil,
            fare_url: nil,
            lang: nil,
            phone: nil,
            private_service: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: String,
                timezone: String,
                url: String,
                disclaimer: String,
                email: String,
                fare_url: String,
                lang: String,
                phone: String,
                private_service: T::Boolean
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
