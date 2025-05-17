# typed: strong

module OpenTransit
  module Models
    class ReportProblemWithStopRetrieveParams < OpenTransit::Internal::Type::BaseModel
      extend OpenTransit::Internal::Type::RequestParameters::Converter
      include OpenTransit::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OpenTransit::ReportProblemWithStopRetrieveParams,
            OpenTransit::Internal::AnyHash
          )
        end

      # A string code identifying the nature of the problem
      sig do
        returns(
          T.nilable(
            OpenTransit::ReportProblemWithStopRetrieveParams::Code::OrSymbol
          )
        )
      end
      attr_reader :code

      sig do
        params(
          code: OpenTransit::ReportProblemWithStopRetrieveParams::Code::OrSymbol
        ).void
      end
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
          code:
            OpenTransit::ReportProblemWithStopRetrieveParams::Code::OrSymbol,
          user_comment: String,
          user_lat: Float,
          user_location_accuracy: Float,
          user_lon: Float,
          request_options: OpenTransit::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A string code identifying the nature of the problem
        code: nil,
        # Additional comment text supplied by the user describing the problem
        user_comment: nil,
        # The reporting user’s current latitude
        user_lat: nil,
        # The reporting user’s location accuracy, in meters
        user_location_accuracy: nil,
        # The reporting user’s current longitude
        user_lon: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            code:
              OpenTransit::ReportProblemWithStopRetrieveParams::Code::OrSymbol,
            user_comment: String,
            user_lat: Float,
            user_location_accuracy: Float,
            user_lon: Float,
            request_options: OpenTransit::RequestOptions
          }
        )
      end
      def to_hash
      end

      # A string code identifying the nature of the problem
      module Code
        extend OpenTransit::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              OpenTransit::ReportProblemWithStopRetrieveParams::Code
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STOP_NAME_WRONG =
          T.let(
            :stop_name_wrong,
            OpenTransit::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol
          )
        STOP_NUMBER_WRONG =
          T.let(
            :stop_number_wrong,
            OpenTransit::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol
          )
        STOP_LOCATION_WRONG =
          T.let(
            :stop_location_wrong,
            OpenTransit::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol
          )
        ROUTE_OR_TRIP_MISSING =
          T.let(
            :route_or_trip_missing,
            OpenTransit::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol
          )
        OTHER =
          T.let(
            :other,
            OpenTransit::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              OpenTransit::ReportProblemWithStopRetrieveParams::Code::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
