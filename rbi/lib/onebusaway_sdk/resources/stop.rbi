# typed: strong

module OnebusawaySDK
  module Resources
    class Stop
      # Get details of a specific stop
      sig do
        params(
          stop_id: String,
          request_options: T.nilable(
            T.any(
              OnebusawaySDK::RequestOptions,
              OnebusawaySDK::Internal::Util::AnyHash
            )
          )
        )
          .returns(OnebusawaySDK::Models::StopRetrieveResponse)
      end
      def retrieve(
        # ID of the stop
        stop_id,
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
