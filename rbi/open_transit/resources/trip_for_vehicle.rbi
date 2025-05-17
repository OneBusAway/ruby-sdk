# typed: strong

module OpenTransit
  module Resources
    class TripForVehicle
      # Retrieve trip for a specific vehicle
      sig do
        params(
          vehicle_id: String,
          include_schedule: T::Boolean,
          include_status: T::Boolean,
          include_trip: T::Boolean,
          time: Integer,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(OpenTransit::Models::TripForVehicleRetrieveResponse)
      end
      def retrieve(
        # ID of the vehicle to retrieve trip details for.
        vehicle_id,
        # Determines whether full <schedule/> element is included in the <tripDetails/>
        # section. Defaults to false.
        include_schedule: nil,
        # Determines whether the full <status/> element is included in the <tripDetails/>
        # section. Defaults to true.
        include_status: nil,
        # Determines whether full <trip/> element is included in the <references/>
        # section. Defaults to false.
        include_trip: nil,
        # Time parameter to query the system at a specific time (optional).
        time: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: OpenTransit::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
