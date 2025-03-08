# typed: strong

module OnebusawaySDK
  module Resources
    class Shape
      sig do
        params(
          shape_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::ShapeRetrieveResponse)
      end
      def retrieve(shape_id, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
