# typed: strong

module OpenTransit
  module Models
    class StopIDsForAgencyListResponse < OpenTransit::Models::ResponseWrapper
      sig { returns(OpenTransit::Models::StopIDsForAgencyListResponse::Data) }
      attr_accessor :data

      sig { params(data: OpenTransit::Models::StopIDsForAgencyListResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OpenTransit::Models::StopIDsForAgencyListResponse::Data}) }
      def to_hash
      end

      class Data < OpenTransit::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[String]) }
        attr_accessor :list

        sig { returns(OpenTransit::Models::References) }
        attr_accessor :references

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[String],
            references: OpenTransit::Models::References
          ).void
        end
        def initialize(limit_exceeded:, list:, references:)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list: T::Array[String],
              references: OpenTransit::Models::References
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
