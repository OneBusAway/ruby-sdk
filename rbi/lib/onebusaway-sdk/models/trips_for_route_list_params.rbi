# typed: strong

module OnebusawaySDK
  module Models
    class TripsForRouteListParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # Determine whether full schedule elements are included. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      def include_schedule
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_schedule=(_)
      end

      # Determine whether full tripStatus elements with real-time information are
      #   included. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      def include_status
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_status=(_)
      end

      # Query the system at a specific time. Useful for testing.
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
          time: Integer,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(include_schedule: nil, include_status: nil, time: nil, request_options: {})
      end

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
      def to_hash
      end
    end
  end
end
