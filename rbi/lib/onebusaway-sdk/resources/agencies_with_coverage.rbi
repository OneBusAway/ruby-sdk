# typed: strong

module OnebusawaySDK
  module Resources
    class AgenciesWithCoverage
      sig do
        params(request_options: T.nilable(T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])))
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
