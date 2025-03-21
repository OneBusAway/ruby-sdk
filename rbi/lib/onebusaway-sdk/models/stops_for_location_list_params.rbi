# typed: strong

module OnebusawaySDK
  module Models
    class StopsForLocationListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(Float) }
      def lat
      end

      sig { params(_: Float).returns(Float) }
      def lat=(_)
      end

      sig { returns(Float) }
      def lon
      end

      sig { params(_: Float).returns(Float) }
      def lon=(_)
      end

      # An alternative to radius to set the search bounding box (optional)
      sig { returns(T.nilable(Float)) }
      def lat_span
      end

      sig { params(_: Float).returns(Float) }
      def lat_span=(_)
      end

      # An alternative to radius to set the search bounding box (optional)
      sig { returns(T.nilable(Float)) }
      def lon_span
      end

      sig { params(_: Float).returns(Float) }
      def lon_span=(_)
      end

      # A search query string to filter the results
      sig { returns(T.nilable(String)) }
      def query
      end

      sig { params(_: String).returns(String) }
      def query=(_)
      end

      # The radius in meters to search within
      sig { returns(T.nilable(Float)) }
      def radius
      end

      sig { params(_: Float).returns(Float) }
      def radius=(_)
      end

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
