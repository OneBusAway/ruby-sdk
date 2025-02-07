# typed: strong

module OpenTransit
  module Models
    class AgenciesWithCoverageListResponse < OpenTransit::Models::ResponseWrapper
      sig { returns(OpenTransit::Models::AgenciesWithCoverageListResponse::Data) }
      attr_accessor :data

      sig { params(data: OpenTransit::Models::AgenciesWithCoverageListResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OpenTransit::Models::AgenciesWithCoverageListResponse::Data}) }
      def to_hash
      end

      class Data < OpenTransit::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[OpenTransit::Models::AgenciesWithCoverageListResponse::Data::List]) }
        attr_accessor :list

        sig { returns(OpenTransit::Models::References) }
        attr_accessor :references

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[OpenTransit::Models::AgenciesWithCoverageListResponse::Data::List],
            references: OpenTransit::Models::References
          ).void
        end
        def initialize(limit_exceeded:, list:, references:)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list: T::Array[OpenTransit::Models::AgenciesWithCoverageListResponse::Data::List],
              references: OpenTransit::Models::References
            }
          )
        end
        def to_hash
        end

        class List < OpenTransit::BaseModel
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
