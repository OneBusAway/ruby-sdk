# typed: strong

module OnebusawaySDK
  module Models
    class ScheduleForRouteRetrieveParams < OnebusawaySDK::BaseModel
      extend OnebusawaySDK::RequestParameters::Converter
      include OnebusawaySDK::RequestParameters

      sig { returns(T.nilable(Date)) }
      def date
      end

      sig { params(_: Date).returns(Date) }
      def date=(_)
      end

      sig do
        params(date: Date, request_options: T.any(OnebusawaySDK::RequestOptions, T::Hash[Symbol, T.anything]))
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
