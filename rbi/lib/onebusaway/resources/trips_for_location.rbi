# typed: strong

module Onebusaway
  module Resources
    class TripsForLocation
      sig do
        params(
          lat: Float,
          lat_span: Float,
          lon: Float,
          lon_span: Float,
          include_schedule: T::Boolean,
          include_trip: T::Boolean,
          time: Integer,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::TripsForLocationListResponse)
      end
      def list(
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

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
