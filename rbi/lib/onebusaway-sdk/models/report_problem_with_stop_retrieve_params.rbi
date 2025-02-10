# typed: strong

module OnebusawaySDK
  module Models
    class ReportProblemWithStopRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(Symbol)) }
      attr_reader :code

      sig { params(code: Symbol).void }
      attr_writer :code

      sig { returns(T.nilable(String)) }
      attr_reader :user_comment

      sig { params(user_comment: String).void }
      attr_writer :user_comment

      sig { returns(T.nilable(Float)) }
      attr_reader :user_lat

      sig { params(user_lat: Float).void }
      attr_writer :user_lat

      sig { returns(T.nilable(Float)) }
      attr_reader :user_location_accuracy

      sig { params(user_location_accuracy: Float).void }
      attr_writer :user_location_accuracy

      sig { returns(T.nilable(Float)) }
      attr_reader :user_lon

      sig { params(user_lon: Float).void }
      attr_writer :user_lon

      sig do
        params(
          code: Symbol,
          user_comment: String,
          user_lat: Float,
          user_location_accuracy: Float,
          user_lon: Float,
          request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
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
        override.returns(
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
