# typed: strong

module OnebusawaySDK
  module Models
    class ScheduleForStopRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(Date)) }
      attr_reader :date

      sig { params(date: Date).void }
      attr_writer :date

      sig do
        params(
          date: Date,
          request_options: T.any(
            OnebusawaySDK::RequestOptions,
            T::Hash[Symbol, T.anything]
          )
        ).void
      end
      def initialize(date: nil, request_options: {})
      end

      sig { override.returns({date: Date, request_options: OnebusawaySDK::RequestOptions}) }
      def to_hash
      end
    end
  end
end
