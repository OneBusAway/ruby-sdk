# typed: strong

module OnebusawaySDK
  module Resources
    class TripDetails
      # Retrieve Trip Details
      sig do
        params(
          trip_id: String,
          include_schedule: T::Boolean,
          include_status: T::Boolean,
          include_trip: T::Boolean,
          service_date: Integer,
          time: Integer,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(OnebusawaySDK::Models::TripDetailRetrieveResponse)
      end
      def retrieve(
        # ID of the trip to retrieve details for.
        trip_id,
        # Whether to include the full schedule element in the tripDetails section
        # (defaults to true).
        include_schedule: nil,
        # Whether to include the full status element in the tripDetails section (defaults
        # to true).
        include_status: nil,
        # Whether to include the full trip element in the references section (defaults to
        # true).
        include_trip: nil,
        # Service date for the trip as Unix time in milliseconds (optional).
        service_date: nil,
        # Time parameter to query the system at a specific time (optional).
        time: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
