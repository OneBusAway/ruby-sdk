# typed: strong

module Onebusaway
  module Models
    class StopRetrieveResponse < Onebusaway::Models::ResponseWrapper
      sig { returns(Onebusaway::Models::StopRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: Onebusaway::Models::StopRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Onebusaway::Models::StopRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < Onebusaway::BaseModel
        sig { returns(Onebusaway::Models::StopRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(Onebusaway::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: Onebusaway::Models::StopRetrieveResponse::Data::Entry,
            references: Onebusaway::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: Onebusaway::Models::StopRetrieveResponse::Data::Entry,
              references: Onebusaway::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < Onebusaway::BaseModel
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
end
