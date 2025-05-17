# typed: strong

module OnebusawaySDK
  module Resources
    class AgenciesWithCoverage
      # Returns a list of all transit agencies currently supported by OneBusAway along
      # with the center of their coverage area.
      sig do
        params(request_options: OnebusawaySDK::RequestOptions::OrHash).returns(
          OnebusawaySDK::Models::AgenciesWithCoverageListResponse
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: OnebusawaySDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
