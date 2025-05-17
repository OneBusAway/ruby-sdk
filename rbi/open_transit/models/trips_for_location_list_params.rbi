# typed: strong

module OpenTransit
  module Models
    class TripsForLocationListParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::TripsForLocationListParams,
            OpenTransit::Internal::AnyHash
          )
        end

      # The latitude coordinate of the search center
      sig { returns(Float) }
      attr_accessor :lat

      # Latitude span of the search bounding box
      sig { returns(Float) }
      attr_accessor :lat_span

      # The longitude coordinate of the search center
      sig { returns(Float) }
      attr_accessor :lon

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
      # false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_trip

      sig { params(include_trip: T::Boolean).void }
      attr_writer :include_trip

      # Specific time for the query. Defaults to the current time.
      sig { returns(T.nilable(Integer)) }
      attr_reader :time

      sig { params(time: Integer).void }
      attr_writer :time

      sig do
        params(
          lat: Float,
          lat_span: Float,
          lon: Float,
          lon_span: Float,
          include_schedule: T::Boolean,
          include_trip: T::Boolean,
          time: Integer,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The latitude coordinate of the search center
        lat:,
        # Latitude span of the search bounding box
        lat_span:,
        # The longitude coordinate of the search center
        lon:,
        # Longitude span of the search bounding box
        lon_span:,
        # Whether to include full schedule elements in the tripDetails section. Defaults
        # to false.
        include_schedule: nil,
        # Whether to include full trip elements in the references section. Defaults to
        # false.
        include_trip: nil,
        # Specific time for the query. Defaults to the current time.
        time: nil,
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
            include_schedule: T::Boolean,
            include_trip: T::Boolean,
            time: Integer,
            request_options: OpenTransit::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
