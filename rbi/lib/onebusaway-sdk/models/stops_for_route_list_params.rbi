# typed: strong

module OnebusawaySDK
  module Models
    class StopsForRouteListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      def include_polylines
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_polylines=(_)
      end

      sig { returns(T.nilable(String)) }
      def time
      end

      sig { params(_: String).returns(String) }
      def time=(_)
      end

      sig do
        params(
          include_polylines: T::Boolean,
          time: String,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(include_polylines: nil, time: nil, request_options: {})
      end

      sig do
        override
          .returns({
                     include_polylines: T::Boolean,
                     time: String,
                     request_options: OnebusawaySDK::RequestOptions
                   })
      end
      def to_hash
      end
    end
  end
end
