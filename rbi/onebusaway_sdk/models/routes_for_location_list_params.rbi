# typed: strong

module OnebusawaySDK
  module Models
    class RoutesForLocationListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::RoutesForLocationListParams,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      # If omitted, defaults to 0.0.
      sig { returns(T.nilable(Float)) }
      attr_reader :lat

      sig { params(lat: Float).void }
      attr_writer :lat

      sig { returns(T.nilable(Float)) }
      attr_reader :lat_span

      sig { params(lat_span: Float).void }
      attr_writer :lat_span

      # If omitted, defaults to 0.0.
      sig { returns(T.nilable(Float)) }
      attr_reader :lon

      sig { params(lon: Float).void }
      attr_writer :lon

      sig { returns(T.nilable(Float)) }
      attr_reader :lon_span

      sig { params(lon_span: Float).void }
      attr_writer :lon_span

      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      sig { returns(T.nilable(Float)) }
      attr_reader :radius

      sig { params(radius: Float).void }
      attr_writer :radius

      sig do
        params(
          lat: Float,
          lat_span: Float,
          lon: Float,
          lon_span: Float,
          query: String,
          radius: Float,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # If omitted, defaults to 0.0.
        lat: nil,
        lat_span: nil,
        # If omitted, defaults to 0.0.
        lon: nil,
        lon_span: nil,
        query: nil,
        radius: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            lat: Float,
            lat_span: Float,
            lon: Float,
            lon_span: Float,
            query: String,
            radius: Float,
            request_options: OnebusawaySDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
