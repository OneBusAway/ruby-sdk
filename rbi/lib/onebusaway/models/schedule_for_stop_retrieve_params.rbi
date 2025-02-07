# typed: strong

module Onebusaway
  module Models
    class ScheduleForStopRetrieveParams < Onebusaway::BaseModel
      extend Onebusaway::RequestParameters::Converter
      include Onebusaway::RequestParameters

      sig { returns(T.nilable(Date)) }
      attr_reader :date

      sig { params(date: Date).void }
      attr_writer :date

      sig do
        params(
          date: Date,
          request_options: T.any(
            Onebusaway::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(date: nil, request_options: {})
      end

      sig { override.returns({date: Date, request_options: Onebusaway::RequestOptions}) }
      def to_hash
      end
    end
  end
end
