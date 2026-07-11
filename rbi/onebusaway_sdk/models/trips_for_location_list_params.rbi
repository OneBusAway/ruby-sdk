# typed: strong

module OnebusawaySDK
  module Models
    class TripsForLocationListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::TripsForLocationListParams,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      # Latitude span of the search bounding box
      sig { returns(Float) }
      attr_accessor :lat_span

      # Longitude span of the search bounding box
      sig { returns(Float) }
      attr_accessor :lon_span

      # Whether to include full schedule elements in the tripDetails section. Defaults
      # to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_schedule

      sig { params(include_schedule: T::Boolean).void }
      attr_writer :include_schedule

      # Whether to include full trip elements in the references section. Defaults to
      # true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_trip

      sig { params(include_trip: T::Boolean).void }
      attr_writer :include_trip

      # The latitude coordinate of the search center. If omitted, defaults to 0.0.
      sig { returns(T.nilable(Float)) }
      attr_reader :lat

      sig { params(lat: Float).void }
      attr_writer :lat

      # The longitude coordinate of the search center. If omitted, defaults to 0.0.
      sig { returns(T.nilable(Float)) }
      attr_reader :lon

      sig { params(lon: Float).void }
      attr_writer :lon

      # Specific time for the query. Defaults to the current time.
      sig { returns(T.nilable(Integer)) }
      attr_reader :time

      sig { params(time: Integer).void }
      attr_writer :time

      sig do
        params(
          lat_span: Float,
          lon_span: Float,
          include_schedule: T::Boolean,
          include_trip: T::Boolean,
          lat: Float,
          lon: Float,
          time: Integer,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Latitude span of the search bounding box
        lat_span:,
        # Longitude span of the search bounding box
        lon_span:,
        # Whether to include full schedule elements in the tripDetails section. Defaults
        # to false.
        include_schedule: nil,
        # Whether to include full trip elements in the references section. Defaults to
        # true.
        include_trip: nil,
        # The latitude coordinate of the search center. If omitted, defaults to 0.0.
        lat: nil,
        # The longitude coordinate of the search center. If omitted, defaults to 0.0.
        lon: nil,
        # Specific time for the query. Defaults to the current time.
        time: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            lat_span: Float,
            lon_span: Float,
            include_schedule: T::Boolean,
            include_trip: T::Boolean,
            lat: Float,
            lon: Float,
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
