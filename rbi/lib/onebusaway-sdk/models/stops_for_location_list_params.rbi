# typed: strong

module OnebusawaySDK
  module Models
    class StopsForLocationListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(Float) }
      attr_accessor :lat

      sig { returns(Float) }
      attr_accessor :lon

      # An alternative to radius to set the search bounding box (optional)
      sig { returns(T.nilable(Float)) }
      attr_reader :lat_span

      sig { params(lat_span: Float).void }
      attr_writer :lat_span

      # An alternative to radius to set the search bounding box (optional)
      sig { returns(T.nilable(Float)) }
      attr_reader :lon_span

      sig { params(lon_span: Float).void }
      attr_writer :lon_span

      # A search query string to filter the results
      sig { returns(T.nilable(String)) }
      attr_reader :query

      sig { params(query: String).void }
      attr_writer :query

      # The radius in meters to search within
      sig { returns(T.nilable(Float)) }
      attr_reader :radius

      sig { params(radius: Float).void }
      attr_writer :radius

      sig do
        params(
          lat: Float,
          lon: Float,
          lat_span: Float,
          lon_span: Float,
          query: String,
          radius: Float,
          request_options: T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(lat:, lon:, lat_span: nil, lon_span: nil, query: nil, radius: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              lat: Float,
              lon: Float,
              lat_span: Float,
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
