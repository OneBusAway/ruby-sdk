# typed: strong

module OnebusawaySDK
  module Resources
    class StopsForAgency
      # Get stops for a specific agency
      sig do
        params(
          agency_id: String,
          request_options: T.nilable(
            T.any(
              OnebusawaySDK::RequestOptions,
              OnebusawaySDK::Internal::Util::AnyHash
            )
          )
        )
          .returns(OnebusawaySDK::Models::StopsForAgencyListResponse)
      end
      def list(
        # ID of the agency
        agency_id,
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
