# typed: strong

module OnebusawaySDK
  module Models
    class TripForVehicleRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::Type::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # Determines whether full <schedule/> element is included in the <tripDetails/>
      #   section. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_schedule

      sig { params(include_schedule: T::Boolean).void }
      attr_writer :include_schedule

      # Determines whether the full <status/> element is included in the <tripDetails/>
      #   section. Defaults to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_status

      sig { params(include_status: T::Boolean).void }
      attr_writer :include_status

      # Determines whether full <trip/> element is included in the <references/>
      #   section. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_trip

      sig { params(include_trip: T::Boolean).void }
      attr_writer :include_trip

      # Time parameter to query the system at a specific time (optional).
      sig { returns(T.nilable(Integer)) }
      attr_reader :time

      sig { params(time: Integer).void }
      attr_writer :time

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
      def self.new(
        include_schedule: nil,
        include_status: nil,
        include_trip: nil,
        time: nil,
        request_options: {}
      )
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
