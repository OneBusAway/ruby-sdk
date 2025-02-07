# typed: strong

module Onebusaway
  module Resources
    class ScheduleForStop
      sig do
        params(
          stop_id: String,
          date: Date,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::ScheduleForStopRetrieveResponse)
      end
      def retrieve(stop_id, date: nil, request_options: {})
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
