# typed: strong

module OnebusawaySDK
  module Models
    class TripsForRouteListParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # Determine whether full schedule elements are included. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_schedule

      sig { params(include_schedule: T::Boolean).void }
      attr_writer :include_schedule

      # Determine whether full tripStatus elements with real-time information are
      # included. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_status

      sig { params(include_status: T::Boolean).void }
      attr_writer :include_status

      # Query the system at a specific time. Useful for testing.
      sig { returns(T.nilable(Integer)) }
      attr_reader :time

      sig { params(time: Integer).void }
      attr_writer :time

      sig do
        params(
          include_schedule: T::Boolean,
          include_status: T::Boolean,
          time: Integer,
          request_options: T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Determine whether full schedule elements are included. Defaults to false.
        include_schedule: nil,
        # Determine whether full tripStatus elements with real-time information are
        # included. Defaults to false.
        include_status: nil,
        # Query the system at a specific time. Useful for testing.
        time: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              include_schedule: T::Boolean,
              include_status: T::Boolean,
              time: Integer,
              request_options: OnebusawaySDK::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
