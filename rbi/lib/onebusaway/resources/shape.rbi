# typed: strong

module Onebusaway
  module Resources
    class Shape
      sig do
        params(
          shape_id: String,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::ShapeRetrieveResponse)
      end
      def retrieve(shape_id, request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
