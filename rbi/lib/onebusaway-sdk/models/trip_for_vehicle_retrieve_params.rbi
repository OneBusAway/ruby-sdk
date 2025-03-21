# typed: strong

module OnebusawaySDK
  module Models
    class TripForVehicleRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # Determines whether full <schedule/> element is included in the <tripDetails/>
      #   section. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      def include_schedule
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_schedule=(_)
      end

      # Determines whether the full <status/> element is included in the <tripDetails/>
      #   section. Defaults to true.
      sig { returns(T.nilable(T::Boolean)) }
      def include_status
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_status=(_)
      end

      # Determines whether full <trip/> element is included in the <references/>
      #   section. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      def include_trip
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_trip=(_)
      end

      # Time parameter to query the system at a specific time (optional).
      sig { returns(T.nilable(Integer)) }
      def time
      end

      sig { params(_: Integer).returns(Integer) }
      def time=(_)
      end

      sig do
        params(
          include_schedule: T::Boolean,
          include_status: T::Boolean,
          include_trip: T::Boolean,
          time: Integer,
          request_options: T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(include_schedule: nil, include_status: nil, include_trip: nil, time: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              include_schedule: T::Boolean,
              include_status: T::Boolean,
              include_trip: T::Boolean,
              time: Integer,
              request_options: OnebusawaySDK::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
