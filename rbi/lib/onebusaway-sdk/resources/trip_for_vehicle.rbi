# typed: strong

module OnebusawaySDK
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
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::TripForVehicleRetrieveResponse)
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

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
