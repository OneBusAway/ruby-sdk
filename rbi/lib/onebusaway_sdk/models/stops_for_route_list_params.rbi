# typed: strong

module OnebusawaySDK
  module Models
    class StopsForRouteListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::Type::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # Include polyline elements in the response (default true)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_polylines

      sig { params(include_polylines: T::Boolean).void }
      attr_writer :include_polylines

      # Specify service date (YYYY-MM-DD or epoch) (default today)
      sig { returns(T.nilable(String)) }
      attr_reader :time

      sig { params(time: String).void }
      attr_writer :time

      sig do
        params(
          include_polylines: T::Boolean,
          time: String,
          request_options: T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Util::AnyHash)
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
