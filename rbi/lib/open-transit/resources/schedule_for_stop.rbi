# typed: strong

module OpenTransit
  module Resources
    class ScheduleForStop
      sig do
        params(
          stop_id: String,
          date: Date,
          request_options: T.nilable(T.any(OpenTransit::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(OpenTransit::Models::ScheduleForStopRetrieveResponse)
      end
      def retrieve(stop_id, date: nil, request_options: {})
      end

      sig { params(client: OpenTransit::Client).void }
      def initialize(client:)
      end
    end
  end
end
