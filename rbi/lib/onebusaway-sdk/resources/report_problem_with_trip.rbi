# typed: strong

module OnebusawaySDK
  module Resources
    class ReportProblemWithTrip
      sig do
        params(
          trip_id: String,
          code: Symbol,
          service_date: Integer,
          stop_id: String,
          user_comment: String,
          user_lat: Float,
          user_location_accuracy: Float,
          user_lon: Float,
          user_on_vehicle: T::Boolean,
          user_vehicle_number: String,
          vehicle_id: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::ResponseWrapper)
      end
      def retrieve(
        trip_id,
        code: nil,
        service_date: nil,
        stop_id: nil,
        user_comment: nil,
        user_lat: nil,
        user_location_accuracy: nil,
        user_lon: nil,
        user_on_vehicle: nil,
        user_vehicle_number: nil,
        vehicle_id: nil,
        request_options: {}
      )
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
