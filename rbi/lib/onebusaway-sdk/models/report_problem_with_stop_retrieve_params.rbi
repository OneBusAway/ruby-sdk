# typed: strong

module OnebusawaySDK
  module Models
    class ReportProblemWithStopRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(Symbol)) }
      def code
      end

      sig { params(_: Symbol).returns(Symbol) }
      def code=(_)
      end

      sig { returns(T.nilable(String)) }
      def user_comment
      end

      sig { params(_: String).returns(String) }
      def user_comment=(_)
      end

      sig { returns(T.nilable(Float)) }
      def user_lat
      end

      sig { params(_: Float).returns(Float) }
      def user_lat=(_)
      end

      sig { returns(T.nilable(Float)) }
      def user_location_accuracy
      end

      sig { params(_: Float).returns(Float) }
      def user_location_accuracy=(_)
      end

      sig { returns(T.nilable(Float)) }
      def user_lon
      end

      sig { params(_: Float).returns(Float) }
      def user_lon=(_)
      end

      sig do
        params(
          code: Symbol,
          user_comment: String,
          user_lat: Float,
          user_location_accuracy: Float,
          user_lon: Float,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        code: nil,
        user_comment: nil,
        user_lat: nil,
        user_location_accuracy: nil,
        user_lon: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              code: Symbol,
              user_comment: String,
              user_lat: Float,
              user_location_accuracy: Float,
              user_lon: Float,
              request_options: OnebusawaySDK::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Code < OnebusawaySDK::Enum
        abstract!

        STOP_NAME_WRONG = :stop_name_wrong
        STOP_NUMBER_WRONG = :stop_number_wrong
        STOP_LOCATION_WRONG = :stop_location_wrong
        ROUTE_OR_TRIP_MISSING = :route_or_trip_missing
        OTHER = :other

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
