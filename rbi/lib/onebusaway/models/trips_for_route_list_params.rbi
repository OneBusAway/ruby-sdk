# typed: strong

module Onebusaway
  module Models
    class TripsForRouteListParams < Onebusaway::BaseModel
      extend Onebusaway::RequestParameters::Converter
      include Onebusaway::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_schedule

      sig { params(include_schedule: T::Boolean).void }
      attr_writer :include_schedule

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_status

      sig { params(include_status: T::Boolean).void }
      attr_writer :include_status

      sig { returns(T.nilable(Integer)) }
      attr_reader :time

      sig { params(time: Integer).void }
      attr_writer :time

      sig do
        params(
          include_schedule: T::Boolean,
          include_status: T::Boolean,
          time: Integer,
          request_options: T.any(Onebusaway::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(include_schedule: nil, include_status: nil, time: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            include_schedule: T::Boolean,
            include_status: T::Boolean,
            time: Integer,
            request_options: Onebusaway::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
