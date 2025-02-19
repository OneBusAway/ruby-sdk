# typed: strong

module OnebusawaySDK
  module Models
    class AgenciesWithCoverageListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data) }
      def data
      end

      sig do
        params(_: OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data)
          .returns(OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(T::Boolean) }
        def limit_exceeded
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def limit_exceeded=(_)
        end

        sig { returns(T::Array[OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List]) }
        def list
        end

        sig do
          params(_: T::Array[OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List])
            .returns(T::Array[OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List])
        end
        def list=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig { params(_: OnebusawaySDK::Models::References).returns(OnebusawaySDK::Models::References) }
        def references=(_)
        end

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[OnebusawaySDK::Models::AgenciesWithCoverageListResponse::Data::List],
            references: OnebusawaySDK::Models::References
          )
            .void
        end
        def initialize(limit_exceeded:, list:, references:)
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
          def agency_id
          end

          sig { params(_: String).returns(String) }
          def agency_id=(_)
          end

          sig { returns(Float) }
          def lat
          end

          sig { params(_: Float).returns(Float) }
          def lat=(_)
          end

          sig { returns(Float) }
          def lat_span
          end

          sig { params(_: Float).returns(Float) }
          def lat_span=(_)
          end

          sig { returns(Float) }
          def lon
          end

          sig { params(_: Float).returns(Float) }
          def lon=(_)
          end

          sig { returns(Float) }
          def lon_span
          end

          sig { params(_: Float).returns(Float) }
          def lon_span=(_)
          end

          sig { params(agency_id: String, lat: Float, lat_span: Float, lon: Float, lon_span: Float).void }
          def initialize(agency_id:, lat:, lat_span:, lon:, lon_span:)
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
