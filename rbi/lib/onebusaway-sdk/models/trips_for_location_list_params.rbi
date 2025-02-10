# typed: strong

module OnebusawaySDK
  module Models
    class TripsForLocationListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(Float) }
      attr_accessor :lat

      sig { returns(Float) }
      attr_accessor :lat_span

      sig { returns(Float) }
      attr_accessor :lon

      sig { returns(Float) }
      attr_accessor :lon_span

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_schedule

      sig { params(include_schedule: T::Boolean).void }
      attr_writer :include_schedule

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_trip

      sig { params(include_trip: T::Boolean).void }
      attr_writer :include_trip

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
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
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
        override.returns(
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
