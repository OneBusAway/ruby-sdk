# typed: strong

module OnebusawaySDK
  module Models
    class ScheduleForRouteRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      # The date for which you want to request a schedule in the format YYYY-MM-DD
      #   (optional, defaults to current date)
      sig { returns(T.nilable(Date)) }
      attr_reader :date

      sig { params(date: Date).void }
      attr_writer :date

      sig do
        params(
          date: Date,
          request_options: T.any(
            OnebusawaySDK::RequestOptions,
            OnebusawaySDK::Util::AnyHash
          )
        )
          .returns(T.attached_class)
      end
      def self.new(date: nil, request_options: {})
      end

      sig { override.returns({date: Date, request_options: OnebusawaySDK::RequestOptions}) }
      def to_hash
      end
    end
  end
end
