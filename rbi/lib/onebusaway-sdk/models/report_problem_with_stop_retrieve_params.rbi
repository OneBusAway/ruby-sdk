# typed: strong

module OnebusawaySDK
  module Models
    class ReportProblemWithStopRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # A string code identifying the nature of the problem
      sig { returns(T.nilable(OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::OrSymbol)) }
      def code
      end

      sig do
        params(_: OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::OrSymbol)
          .returns(OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::OrSymbol)
      end
      def code=(_)
      end

      # Additional comment text supplied by the user describing the problem
      sig { returns(T.nilable(String)) }
      def user_comment
      end

      sig { params(_: String).returns(String) }
      def user_comment=(_)
      end

      # The reporting user’s current latitude
      sig { returns(T.nilable(Float)) }
      def user_lat
      end

      sig { params(_: Float).returns(Float) }
      def user_lat=(_)
      end

      # The reporting user’s location accuracy, in meters
      sig { returns(T.nilable(Float)) }
      def user_location_accuracy
      end

      sig { params(_: Float).returns(Float) }
      def user_location_accuracy=(_)
      end

      # The reporting user’s current longitude
      sig { returns(T.nilable(Float)) }
      def user_lon
      end

      sig { params(_: Float).returns(Float) }
      def user_lon=(_)
      end

      sig do
        params(
          code: OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::OrSymbol,
          user_comment: String,
          user_lat: Float,
          user_location_accuracy: Float,
          user_lon: Float,
          request_options: T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              code: OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::OrSymbol,
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

      # A string code identifying the nature of the problem
      module Code
        extend OnebusawaySDK::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code) }
        OrSymbol =
          T.type_alias { T.any(Symbol, OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol) }

        STOP_NAME_WRONG =
          T.let(:stop_name_wrong, OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol)
        STOP_NUMBER_WRONG =
          T.let(:stop_number_wrong, OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol)
        STOP_LOCATION_WRONG =
          T.let(
            :stop_location_wrong,
            OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol
          )
        ROUTE_OR_TRIP_MISSING =
          T.let(
            :route_or_trip_missing,
            OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol
          )
        OTHER = T.let(:other, OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
