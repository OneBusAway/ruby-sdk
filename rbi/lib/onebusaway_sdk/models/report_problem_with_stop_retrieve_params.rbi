# typed: strong

module OnebusawaySDK
  module Models
    class ReportProblemWithStopRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      # A string code identifying the nature of the problem
      sig { returns(T.nilable(OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::OrSymbol)) }
      attr_reader :code

      sig { params(code: OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::OrSymbol).void }
      attr_writer :code

      # Additional comment text supplied by the user describing the problem
      sig { returns(T.nilable(String)) }
      attr_reader :user_comment

      sig { params(user_comment: String).void }
      attr_writer :user_comment

      # The reporting user’s current latitude
      sig { returns(T.nilable(Float)) }
      attr_reader :user_lat

      sig { params(user_lat: Float).void }
      attr_writer :user_lat

      # The reporting user’s location accuracy, in meters
      sig { returns(T.nilable(Float)) }
      attr_reader :user_location_accuracy

      sig { params(user_location_accuracy: Float).void }
      attr_writer :user_location_accuracy

      # The reporting user’s current longitude
      sig { returns(T.nilable(Float)) }
      attr_reader :user_lon

      sig { params(user_lon: Float).void }
      attr_writer :user_lon

      sig do
        params(
          code: OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::OrSymbol,
          user_comment: String,
          user_lat: Float,
          user_location_accuracy: Float,
          user_lon: Float,
          request_options: T.any(OnebusawaySDK::RequestOptions, OnebusawaySDK::Internal::AnyHash)
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
        extend OnebusawaySDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol) }

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

        sig { override.returns(T::Array[OnebusawaySDK::Models::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol]) }
        def self.values
        end
      end
    end
  end
end
