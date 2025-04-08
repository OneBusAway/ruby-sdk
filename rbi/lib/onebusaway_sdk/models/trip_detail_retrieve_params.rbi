# typed: strong

module OnebusawaySDK
  module Models
    class TripDetailRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # Whether to include the full schedule element in the tripDetails section
      #   (defaults to true).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_schedule

      sig { params(include_schedule: T::Boolean).void }
      attr_writer :include_schedule

      # Whether to include the full status element in the tripDetails section (defaults
      #   to true).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_status

      sig { params(include_status: T::Boolean).void }
      attr_writer :include_status

      # Whether to include the full trip element in the references section (defaults to
      #   true).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_trip

      sig { params(include_trip: T::Boolean).void }
      attr_writer :include_trip

      # Service date for the trip as Unix time in milliseconds (optional).
      sig { returns(T.nilable(Integer)) }
      attr_reader :service_date

      sig { params(service_date: Integer).void }
      attr_writer :service_date

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
          service_date: Integer,
          time: Integer,
          request_options: T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        include_schedule: nil,
        include_status: nil,
        include_trip: nil,
        service_date: nil,
        time: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              include_schedule: T::Boolean,
              include_status: T::Boolean,
              include_trip: T::Boolean,
              service_date: Integer,
              time: Integer,
              request_options: OnebusawaySDK::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
