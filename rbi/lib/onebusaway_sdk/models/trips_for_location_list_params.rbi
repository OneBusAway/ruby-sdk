# typed: strong

module OnebusawaySDK
  module Models
    class TripsForLocationListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

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
      #   to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_schedule

      sig { params(include_schedule: T::Boolean).void }
      attr_writer :include_schedule

      # Whether to include full trip elements in the references section. Defaults to
      #   false.
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
          request_options: T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        lat:,
        lat_span:,
        lon:,
        lon_span:,
        include_schedule: nil,
        include_trip: nil,
        time: nil,
        request_options: {}
      )
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
      def to_hash; end
    end
  end
end
