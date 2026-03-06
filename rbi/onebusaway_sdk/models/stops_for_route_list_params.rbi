# typed: strong

module OnebusawaySDK
  module Models
    class StopsForRouteListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::StopsForRouteListParams,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :route_id

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
          route_id: String,
          include_polylines: T::Boolean,
          time: String,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        route_id:,
        # Include polyline elements in the response (default true)
        include_polylines: nil,
        # Specify service date (YYYY-MM-DD or epoch) (default today)
        time: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            route_id: String,
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
