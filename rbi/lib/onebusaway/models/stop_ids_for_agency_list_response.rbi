# typed: strong

module Onebusaway
  module Models
    class StopIDsForAgencyListResponse < Onebusaway::Models::ResponseWrapper
      sig { returns(Onebusaway::Models::StopIDsForAgencyListResponse::Data) }
      attr_accessor :data

      sig { params(data: Onebusaway::Models::StopIDsForAgencyListResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Onebusaway::Models::StopIDsForAgencyListResponse::Data}) }
      def to_hash
      end

      class Data < Onebusaway::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[String]) }
        attr_accessor :list

        sig { returns(Onebusaway::Models::References) }
        attr_accessor :references

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[String],
            references: Onebusaway::Models::References
          ).void
        end
        def initialize(limit_exceeded:, list:, references:)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list: T::Array[String],
              references: Onebusaway::Models::References
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
