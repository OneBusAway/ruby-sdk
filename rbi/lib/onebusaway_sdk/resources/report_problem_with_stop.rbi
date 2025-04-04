# typed: strong

module OnebusawaySDK
  module Resources
    class ReportProblemWithStop
      # Submit a user-generated problem report for a stop
      sig do
        params(
          stop_id: String,
          code: OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::OrSymbol,
          user_comment: String,
          user_lat: Float,
          user_location_accuracy: Float,
          user_lon: Float,
          request_options: T.nilable(
            T.any(
              OnebusawaySDK::RequestOptions,
              OnebusawaySDK::Internal::Util::AnyHash
            )
          )
        )
          .returns(OnebusawaySDK::Models::ResponseWrapper)
      end
      def retrieve(
        # The ID of the stop
        stop_id,
        # A string code identifying the nature of the problem
        code: nil,
        # Additional comment text supplied by the user describing the problem
        user_comment: nil,
        # The reporting user’s current latitude
        user_lat: nil,
        # The reporting user’s location accuracy, in meters
        user_location_accuracy: nil,
        # The reporting user’s current longitude
        user_lon: nil,
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
