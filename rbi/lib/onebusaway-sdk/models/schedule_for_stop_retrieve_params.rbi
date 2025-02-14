# typed: strong

module OnebusawaySDK
  module Models
    class ScheduleForStopRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(Date)) }
      def date
      end

      sig { params(_: Date).returns(Date) }
      def date=(_)
      end

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
