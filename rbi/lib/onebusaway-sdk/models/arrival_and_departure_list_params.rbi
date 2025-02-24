# typed: strong

module OnebusawaySDK
  module Models
    class ArrivalAndDepartureListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(Integer)) }
      def minutes_after
      end

      sig { params(_: Integer).returns(Integer) }
      def minutes_after=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def minutes_before
      end

      sig { params(_: Integer).returns(Integer) }
      def minutes_before=(_)
      end

      sig { returns(T.nilable(Time)) }
      def time
      end

      sig { params(_: Time).returns(Time) }
      def time=(_)
      end

      sig do
        params(
          minutes_after: Integer,
          minutes_before: Integer,
          time: Time,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(minutes_after: nil, minutes_before: nil, time: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              minutes_after: Integer,
              minutes_before: Integer,
              time: Time,
              request_options: OnebusawaySDK::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
