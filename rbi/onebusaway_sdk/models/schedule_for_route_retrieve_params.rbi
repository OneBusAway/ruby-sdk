# typed: strong

module OnebusawaySDK
  module Models
    class ScheduleForRouteRetrieveParams < OnebusawaySDK::Internal::Type::BaseModel
      extend OnebusawaySDK::Internal::Type::RequestParameters::Converter
      include OnebusawaySDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            OnebusawaySDK::ScheduleForRouteRetrieveParams,
            OnebusawaySDK::Internal::AnyHash
          )
        end

      # The date for which you want to request a schedule in the format YYYY-MM-DD
      # (optional, defaults to current date)
      sig { returns(T.nilable(Date)) }
      attr_reader :date

      sig { params(date: Date).void }
      attr_writer :date

      sig do
        params(
          date: Date,
          request_options: OnebusawaySDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The date for which you want to request a schedule in the format YYYY-MM-DD
        # (optional, defaults to current date)
        date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { date: Date, request_options: OnebusawaySDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
