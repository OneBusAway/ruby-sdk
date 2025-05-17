# typed: strong

module OpenTransit
  module Models
    class StopIDsForAgencyListResponse < OpenTransit::Models::ResponseWrapper
      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::Models::StopIDsForAgencyListResponse,
            OpenTransit::Internal::AnyHash
          )
        end

      sig { returns(OpenTransit::Models::StopIDsForAgencyListResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: OpenTransit::Models::StopIDsForAgencyListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: OpenTransit::Models::StopIDsForAgencyListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OpenTransit::Models::StopIDsForAgencyListResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OpenTransit::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              OpenTransit::Models::StopIDsForAgencyListResponse::Data,
              OpenTransit::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[String]) }
        attr_accessor :list

        sig { returns(OpenTransit::References) }
        attr_reader :references

        sig { params(references: OpenTransit::References::OrHash).void }
        attr_writer :references

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[String],
            references: OpenTransit::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(limit_exceeded:, list:, references:)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list: T::Array[String],
              references: OpenTransit::References
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
