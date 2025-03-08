# typed: strong

module OnebusawaySDK
  module Resources
    class VehiclesForAgency
      sig do
        params(
          agency_id: String,
          time: String,
          request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(OnebusawaySDK::Models::VehiclesForAgencyListResponse)
      end
      def list(agency_id, time: nil, request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
