# typed: strong

module Onebusaway
  module Resources
    class TripForVehicle
      sig do
        params(
          vehicle_id: String,
          include_schedule: T::Boolean,
          include_status: T::Boolean,
          include_trip: T::Boolean,
          time: Integer,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::TripForVehicleRetrieveResponse)
      end
      def retrieve(
        vehicle_id,
        include_schedule: nil,
        include_status: nil,
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
