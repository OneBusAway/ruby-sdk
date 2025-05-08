# typed: strong

module OnebusawaySDK
  module Resources
    class Trip
      # Get details of a specific trip
      sig do
        params(
          trip_id: String,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(OnebusawaySDK::Models::TripRetrieveResponse)
      end
      def retrieve(
        # ID of the trip
        trip_id,
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
