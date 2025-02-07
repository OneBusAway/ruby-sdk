# typed: strong

module Onebusaway
  module Resources
    class ReportProblemWithStop
      sig do
        params(
          stop_id: String,
          code: Symbol,
          user_comment: String,
          user_lat: Float,
          user_location_accuracy: Float,
          user_lon: Float,
          request_options: T.nilable(T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything]))
        ).returns(Onebusaway::Models::ResponseWrapper)
      end
      def retrieve(
        stop_id,
        code: nil,
        user_comment: nil,
        user_lat: nil,
        user_location_accuracy: nil,
        user_lon: nil,
        request_options: {}
      )
      end

      sig { params(client: Onebusaway::Client).void }
      def initialize(client:)
      end
    end
  end
end
