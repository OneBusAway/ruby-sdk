# typed: strong

module OnebusawaySDK
  module Models
    class StopsForRouteListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_polylines

      sig { params(include_polylines: T::Boolean).void }
      attr_writer :include_polylines

      sig { returns(T.nilable(String)) }
      attr_reader :time

      sig { params(time: String).void }
      attr_writer :time

      sig do
        params(
          include_polylines: T::Boolean,
          time: String,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(include_polylines: nil, time: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            include_polylines: T::Boolean,
            time: String,
            request_options: OnebusawaySDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
