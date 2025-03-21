# typed: strong

module OnebusawaySDK
  module Resources
    class AgenciesWithCoverage
      # Returns a list of all transit agencies currently supported by OneBusAway along
      #   with the center of their coverage area.
      sig do
        params(request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Util::AnyHash)))
          .returns(OnebusawaySDK::Models::AgenciesWithCoverageListResponse)
      end
      def list(request_options: {})
      end

      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
