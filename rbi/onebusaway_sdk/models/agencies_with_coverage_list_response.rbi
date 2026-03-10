# typed: strong

module OnebusawaySDK
  module Models
    class AgenciesWithCoverageListResponse < OnebusawaySDK::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::Models::AgenciesWithCoverageListResponse,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig do
        returns(OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data)
      end
      attr_reader :data

      sig do
        params(
          data:
            OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data: OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data,
              OnebusawaySDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List
            ]
          )
        end
        attr_accessor :list

        sig { returns(OnebusawaySDK::References) }
        attr_reader :references

        sig { params(references: OnebusawaySDK::References::OrHash).void }
        attr_writer :references

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :limit_exceeded

        sig { params(limit_exceeded: T::Boolean).void }
        attr_writer :limit_exceeded

        sig do
          params(
            list:
              T::Array[
                OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List::OrHash
              ],
            references: OnebusawaySDK::References::OrHash,
            limit_exceeded: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(list:, references:, limit_exceeded: nil)
        end

        sig do
          override.returns(
            {
              list:
                T::Array[
                  OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List
                ],
              references: OnebusawaySDK::References,
              limit_exceeded: T::Boolean
            }
          )
        end
        def to_hash
        end

        class List < OnebusawaySDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List,
                OnebusawaySDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :agency_id

          sig { returns(Float) }
          attr_accessor :lat

          sig { returns(Float) }
          attr_accessor :lat_span

          sig { returns(Float) }
          attr_accessor :lon

          sig { returns(Float) }
          attr_accessor :lon_span

          sig do
            params(
              agency_id: String,
              lat: Float,
              lat_span: Float,
              lon: Float,
              lon_span: Float
            ).returns(T.attached_class)
          end
          def self.new(agency_id:, lat:, lat_span:, lon:, lon_span:)
          end

          sig do
            override.returns(
              {
                agency_id: String,
                lat: Float,
                lat_span: Float,
                lon: Float,
                lon_span: Float
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
