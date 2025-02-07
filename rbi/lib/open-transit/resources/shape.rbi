# typed: strong

module OpenTransit
  module Resources
    class Shape
      sig do
        params(
          shape_id: String,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::ShapeRetrieveResponse)
      end
      def retrieve(shape_id, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
