# typed: strong

module OnebusawaySDK
  module Models
    class AgencyRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::Models::AgencyRetrieveResponse,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig { returns(OnebusawaySDK::Models::AgencyRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: OnebusawaySDK::Models::AgencyRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: OnebusawaySDK::Models::AgencyRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OnebusawaySDK::Models::AgencyRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OnebusawaySDK::Models::AgencyRetrieveResponse::Data,
              OnebusawaySDK::Internal::AnyHash
            )
          end

        sig do
          returns(OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry)
        end
        attr_reader :entry

        sig do
          params(
            entry:
              OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry::OrHash
          ).void
        end
        attr_writer :entry

        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(OnebusawaySDK::References) }
        attr_reader :references

        sig { params(references: OnebusawaySDK::References::OrHash).void }
        attr_writer :references

        sig do
          params(
            entry:
              OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry::OrHash,
            limit_exceeded: T::Boolean,
            references: OnebusawaySDK::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entry:, limit_exceeded:, references:)
        end

        sig do
          override.returns(
            {
              entry: OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry,
              limit_exceeded: T::Boolean,
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
                OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry,
                OnebusawaySDK::Internal::AnyHash
              )
            end

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
            ).returns(T.attached_class)
          end
          def self.new(
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
