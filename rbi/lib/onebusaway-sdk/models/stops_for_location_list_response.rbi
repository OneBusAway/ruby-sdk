# typed: strong

module OnebusawaySDK
  module Models
    class StopsForLocationListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::StopsForLocationListResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::StopsForLocationListResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .void
      end
      attr_writer :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::StopsForLocationListResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::StopsForLocationListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[OnebusawaySDK::Models::StopsForLocationListResponse::Data::List]) }
        attr_accessor :list

        sig { returns(OnebusawaySDK::Models::References) }
        attr_reader :references

        sig { params(references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash)).void }
        attr_writer :references

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :out_of_range

        sig { params(out_of_range: T::Boolean).void }
        attr_writer :out_of_range

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[T.any(OnebusawaySDK::Models::StopsForLocationListResponse::Data::List, OnebusawaySDK::Util::AnyHash)],
            references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash),
            out_of_range: T::Boolean
          )
            .returns(T.attached_class)
        end
        def self.new(limit_exceeded:, list:, references:, out_of_range: nil)
        end

        sig do
          override
            .returns(
              {
                limit_exceeded: T::Boolean,
                list: T::Array[OnebusawaySDK::Models::StopsForLocationListResponse::Data::List],
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
            )
              .returns(T.attached_class)
          end
          def self.new(
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
            override
              .returns(
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
end
