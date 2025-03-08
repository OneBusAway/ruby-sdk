# typed: strong

module OnebusawaySDK
  module Models
    class TripsForLocationListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(Float) }
      def lat
      end

      sig { params(_: Float).returns(Float) }
      def lat=(_)
      end

      sig { returns(Float) }
      def lat_span
      end

      sig { params(_: Float).returns(Float) }
      def lat_span=(_)
      end

      sig { returns(Float) }
      def lon
      end

      sig { params(_: Float).returns(Float) }
      def lon=(_)
      end

      sig { returns(Float) }
      def lon_span
      end

      sig { params(_: Float).returns(Float) }
      def lon_span=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def include_schedule
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_schedule=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def include_trip
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_trip=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def time
      end

      sig { params(_: Integer).returns(Integer) }
      def time=(_)
      end

      sig do
        params(
          lat: Float,
          lat_span: Float,
          lon: Float,
          lon_span: Float,
          include_schedule: T::Boolean,
          include_trip: T::Boolean,
          time: Integer,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(lat:, lat_span:, lon:, lon_span:, include_schedule: nil, include_trip: nil, time: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              lat: Float,
              lat_span: Float,
              lon: Float,
              lon_span: Float,
              include_schedule: T::Boolean,
              include_trip: T::Boolean,
              time: Integer,
              request_options: OnebusawaySDK::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
