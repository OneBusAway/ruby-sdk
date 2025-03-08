# typed: strong

module OnebusawaySDK
  module Models
    class TripDetailRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(T::Boolean)) }
      def include_schedule
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_schedule=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def include_status
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_status=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def include_trip
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def include_trip=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def service_date
      end

      sig { params(_: Integer).returns(Integer) }
      def service_date=(_)
      end

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
          service_date: Integer,
          time: Integer,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
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
      )
      end

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
      def to_hash
      end
    end
  end
end
