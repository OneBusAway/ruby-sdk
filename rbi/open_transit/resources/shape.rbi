# typed: strong

module OpenTransit
  module Resources
    class Shape
      # Retrieve a shape (the path traveled by a transit vehicle) by ID.
      sig do
        params(
          shape_id: String,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(OpenTransit::Models::ShapeRetrieveResponse)
      end
      def retrieve(
        # The shape ID, encoded directly in the URL
        shape_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: OpenTransit::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
