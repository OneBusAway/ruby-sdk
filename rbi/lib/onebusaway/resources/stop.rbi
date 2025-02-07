# typed: strong

module Onebusaway
  module Resources
    class Stop
      sig do
        params(
          stop_id: String,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::StopRetrieveResponse)
      end
      def retrieve(stop_id, request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
