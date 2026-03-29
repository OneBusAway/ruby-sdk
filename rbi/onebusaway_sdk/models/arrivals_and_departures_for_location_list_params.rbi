# typed: strong

module OnebusawaySDK
  module Models
    class ArrivalsAndDeparturesForLocationListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::ArrivalsAndDeparturesForLocationListParams,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      # The latitude coordinate of the search center.
      sig { returns(Float) }
      attr_accessor :lat

      # The longitude coordinate of the search center.
      sig { returns(Float) }
      attr_accessor :lon

      # If true, returns a 404 Not Found error instead of an empty result.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :empty_returns_not_found

      sig { params(empty_returns_not_found: T::Boolean).void }
      attr_writer :empty_returns_not_found

      # Sets the latitude limits of the search bounding box.
      sig { returns(T.nilable(Float)) }
      attr_reader :lat_span

      sig { params(lat_span: Float).void }
      attr_writer :lat_span

      # Sets the longitude limits of the search bounding box.
      sig { returns(T.nilable(Float)) }
      attr_reader :lon_span

      sig { params(lon_span: Float).void }
      attr_writer :lon_span

      # The max size of the list of nearby stops and arrivals to return. Defaults to
      # 250, max 1000.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_count

      sig { params(max_count: Integer).void }
      attr_writer :max_count

      # Include arrivals and departures this many minutes after the query time.
      sig { returns(T.nilable(Integer)) }
      attr_reader :minutes_after

      sig { params(minutes_after: Integer).void }
      attr_writer :minutes_after

      # Include arrivals and departures this many minutes before the query time.
      sig { returns(T.nilable(Integer)) }
      attr_reader :minutes_before

      sig { params(minutes_before: Integer).void }
      attr_writer :minutes_before

      # The search radius in meters.
      sig { returns(T.nilable(Float)) }
      attr_reader :radius

      sig { params(radius: Float).void }
      attr_writer :radius

      # Optional list of GTFS routeTypes to filter by (comma delimited) e.g. "1,2,3".
      sig { returns(T.nilable(String)) }
      attr_reader :route_type

      sig { params(route_type: String).void }
      attr_writer :route_type

      # By default, returns the status right now. Can be queried at a specific time
      # (milliseconds since epoch) for testing.
      sig { returns(T.nilable(Integer)) }
      attr_reader :time

      sig { params(time: Integer).void }
      attr_writer :time

      sig do
        params(
          lat: Float,
          lon: Float,
          empty_returns_not_found: T::Boolean,
          lat_span: Float,
          lon_span: Float,
          max_count: Integer,
          minutes_after: Integer,
          minutes_before: Integer,
          radius: Float,
          route_type: String,
          time: Integer,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The latitude coordinate of the search center.
        lat:,
        # The longitude coordinate of the search center.
        lon:,
        # If true, returns a 404 Not Found error instead of an empty result.
        empty_returns_not_found: nil,
        # Sets the latitude limits of the search bounding box.
        lat_span: nil,
        # Sets the longitude limits of the search bounding box.
        lon_span: nil,
        # The max size of the list of nearby stops and arrivals to return. Defaults to
        # 250, max 1000.
        max_count: nil,
        # Include arrivals and departures this many minutes after the query time.
        minutes_after: nil,
        # Include arrivals and departures this many minutes before the query time.
        minutes_before: nil,
        # The search radius in meters.
        radius: nil,
        # Optional list of GTFS routeTypes to filter by (comma delimited) e.g. "1,2,3".
        route_type: nil,
        # By default, returns the status right now. Can be queried at a specific time
        # (milliseconds since epoch) for testing.
        time: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            lat: Float,
            lon: Float,
            empty_returns_not_found: T::Boolean,
            lat_span: Float,
            lon_span: Float,
            max_count: Integer,
            minutes_after: Integer,
            minutes_before: Integer,
            radius: Float,
            route_type: String,
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
