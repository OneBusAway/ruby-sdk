# typed: strong

module OnebusawaySDK
  module Models
    class ArrivalAndDepartureListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # Include vehicles arriving or departing in the next n minutes.
      sig { returns(T.nilable(Integer)) }
      attr_reader :minutes_after

      sig { params(minutes_after: Integer).void }
      attr_writer :minutes_after

      # Include vehicles having arrived or departed in the previous n minutes.
      sig { returns(T.nilable(Integer)) }
      attr_reader :minutes_before

      sig { params(minutes_before: Integer).void }
      attr_writer :minutes_before

      # The specific time for querying the system status.
      sig { returns(T.nilable(Time)) }
      attr_reader :time

      sig { params(time: Time).void }
      attr_writer :time

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
