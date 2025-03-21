# typed: strong

module OnebusawaySDK
  module Models
    class ArrivalAndDepartureListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # Include vehicles arriving or departing in the next n minutes.
      sig { returns(T.nilable(Integer)) }
      def minutes_after
      end

      sig { params(_: Integer).returns(Integer) }
      def minutes_after=(_)
      end

      # Include vehicles having arrived or departed in the previous n minutes.
      sig { returns(T.nilable(Integer)) }
      def minutes_before
      end

      sig { params(_: Integer).returns(Integer) }
      def minutes_before=(_)
      end

      # The specific time for querying the system status.
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
          request_options: T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(minutes_after: nil, minutes_before: nil, time: nil, request_options: {})
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
