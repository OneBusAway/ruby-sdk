# typed: strong

module OnebusawaySDK
  module Models
    class AgenciesWithCoverageListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: T.any(
            OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data,
            OnebusawaySDK::Internal::Util::AnyHash
          )
        )
          .void
      end
      attr_writer :data

      sig do
        params(
          data: T.any(
            OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data,
            OnebusawaySDK::Internal::Util::AnyHash
          )
        )
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List]) }
        attr_accessor :list

        sig { returns(OnebusawaySDK::Models::References) }
        attr_reader :references

        sig { params(references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Internal::Util::AnyHash)).void }
        attr_writer :references

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[
            T.any(
              OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List,
              OnebusawaySDK::Internal::Util::AnyHash
            )
            ],
            references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Internal::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(limit_exceeded:, list:, references:)
        end

        sig do
          override
            .returns(
              {
                limit_exceeded: T::Boolean,
                list: T::Array[OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List],
                references: OnebusawaySDK::Models::References
              }
            )
        end
        def to_hash
        end

        class List < OnebusawaySDK::BaseModel
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
            params(agency_id: String, lat: Float, lat_span: Float, lon: Float, lon_span: Float)
              .returns(T.attached_class)
          end
          def self.new(agency_id:, lat:, lat_span:, lon:, lon_span:)
          end

          sig do
            override.returns({agency_id: String, lat: Float, lat_span: Float, lon: Float, lon_span: Float})
          end
          def to_hash
          end
        end
      end
    end
  end
end
