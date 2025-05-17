# typed: strong

module OpenTransit
  module Models
    class ConfigRetrieveParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::ConfigRetrieveParams,
            OpenTransit::Internal::AnyHash
          )
        end

      sig do
        params(request_options: OpenTransit::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: OpenTransit::RequestOptions }) }
      def to_hash
      end
    end
  end
end
