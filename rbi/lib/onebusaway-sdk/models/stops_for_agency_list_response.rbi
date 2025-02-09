# typed: strong

module OnebusawaySDK
  module Models
    class StopsForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(T::Boolean) }
      attr_accessor :limit_exceeded

      sig { returns(T::Array[OnebusawaySDK::Models::StopsForAgencyListResponse::List]) }
      attr_accessor :list

      sig { returns(OnebusawaySDK::Models::References) }
      attr_accessor :references

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :out_of_range

      sig { params(out_of_range: T::Boolean).void }
      attr_writer :out_of_range

      sig do
        params(
          limit_exceeded: T::Boolean,
          list: T::Array[OnebusawaySDK::Models::StopsForAgencyListResponse::List],
          references: OnebusawaySDK::Models::References,
          out_of_range: T::Boolean
        ).void
      end
      def initialize(limit_exceeded:, list:, references:, out_of_range: nil)
      end

      sig do
        override.returns(
          {
            limit_exceeded: T::Boolean,
            list: T::Array[OnebusawaySDK::Models::StopsForAgencyListResponse::List],
            references: OnebusawaySDK::Models::References,
            out_of_range: T::Boolean
          }
        )
      end
      def to_hash
      end

      class List < OnebusawaySDK::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(Float) }
        attr_accessor :lat

        sig { returns(Float) }
        attr_accessor :lon

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :parent

        sig { returns(T::Array[String]) }
        attr_accessor :route_ids

        sig { returns(T::Array[String]) }
        attr_accessor :static_route_ids

        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        sig { returns(T.nilable(String)) }
        attr_reader :direction

        sig { params(direction: String).void }
        attr_writer :direction

        sig { returns(T.nilable(Integer)) }
        attr_reader :location_type

        sig { params(location_type: Integer).void }
        attr_writer :location_type

        sig { returns(T.nilable(String)) }
        attr_reader :wheelchair_boarding

        sig { params(wheelchair_boarding: String).void }
        attr_writer :wheelchair_boarding

        sig do
          params(
            id: String,
            lat: Float,
            lon: Float,
            name: String,
            parent: String,
            route_ids: T::Array[String],
            static_route_ids: T::Array[String],
            code: String,
            direction: String,
            location_type: Integer,
            wheelchair_boarding: String
          ).void
        end
        def initialize(
          id:,
          lat:,
          lon:,
          name:,
          parent:,
          route_ids:,
          static_route_ids:,
          code: nil,
          direction: nil,
          location_type: nil,
          wheelchair_boarding: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              lat: Float,
              lon: Float,
              name: String,
              parent: String,
              route_ids: T::Array[String],
              static_route_ids: T::Array[String],
              code: String,
              direction: String,
              location_type: Integer,
              wheelchair_boarding: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
