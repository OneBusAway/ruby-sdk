# typed: strong

module OpenTransit
  module Models
    class StopsForRouteListResponse < OpenTransit::Models::ResponseWrapper
      sig { returns(OpenTransit::Models::StopsForRouteListResponse::Data) }
      attr_accessor :data

      sig { params(data: OpenTransit::Models::StopsForRouteListResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OpenTransit::Models::StopsForRouteListResponse::Data}) }
      def to_hash
      end

      class Data < OpenTransit::BaseModel
        sig { returns(OpenTransit::Models::StopsForRouteListResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(OpenTransit::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: OpenTransit::Models::StopsForRouteListResponse::Data::Entry,
            references: OpenTransit::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OpenTransit::Models::StopsForRouteListResponse::Data::Entry,
              references: OpenTransit::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < OpenTransit::BaseModel
          sig do
            returns(T.nilable(T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline]))
          end
          attr_reader :polylines

          sig do
            params(polylines: T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline]).void
          end
          attr_writer :polylines

          sig { returns(T.nilable(String)) }
          attr_reader :route_id

          sig { params(route_id: String).void }
          attr_writer :route_id

          sig do
            returns(T.nilable(T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping]))
          end
          attr_reader :stop_groupings

          sig do
            params(
              stop_groupings: T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping]
            ).void
          end
          attr_writer :stop_groupings

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :stop_ids

          sig { params(stop_ids: T::Array[String]).void }
          attr_writer :stop_ids

          sig do
            params(
              polylines: T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline],
              route_id: String,
              stop_groupings: T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping],
              stop_ids: T::Array[String]
            ).void
          end
          def initialize(polylines: nil, route_id: nil, stop_groupings: nil, stop_ids: nil)
          end

          sig do
            override.returns(
              {
                polylines: T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::Polyline], route_id: String, stop_groupings: T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping], stop_ids: T::Array[String]
              }
            )
          end
          def to_hash
          end

          class Polyline < OpenTransit::BaseModel
            sig { returns(T.nilable(Integer)) }
            attr_reader :length

            sig { params(length: Integer).void }
            attr_writer :length

            sig { returns(T.nilable(String)) }
            attr_reader :levels

            sig { params(levels: String).void }
            attr_writer :levels

            sig { returns(T.nilable(String)) }
            attr_reader :points

            sig { params(points: String).void }
            attr_writer :points

            sig { params(length: Integer, levels: String, points: String).void }
            def initialize(length: nil, levels: nil, points: nil)
            end

            sig { override.returns({length: Integer, levels: String, points: String}) }
            def to_hash
            end
          end

          class StopGrouping < OpenTransit::BaseModel
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig do
              returns(T.nilable(OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name))
            end
            attr_reader :name

            sig do
              params(name: OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name).void
            end
            attr_writer :name

            sig do
              returns(T.nilable(T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline]))
            end
            attr_reader :polylines

            sig do
              params(
                polylines: T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline]
              ).void
            end
            attr_writer :polylines

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :stop_ids

            sig { params(stop_ids: T::Array[String]).void }
            attr_writer :stop_ids

            sig do
              params(
                id: String,
                name: OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name,
                polylines: T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline],
                stop_ids: T::Array[String]
              ).void
            end
            def initialize(id: nil, name: nil, polylines: nil, stop_ids: nil)
            end

            sig do
              override.returns(
                {
                  id: String,
                  name: OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name,
                  polylines: T::Array[OpenTransit::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline],
                  stop_ids: T::Array[String]
                }
              )
            end
            def to_hash
            end

            class Name < OpenTransit::BaseModel
              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :names

              sig { params(names: T::Array[String]).void }
              attr_writer :names

              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig { params(name: String, names: T::Array[String], type: String).void }
              def initialize(name: nil, names: nil, type: nil)
              end

              sig { override.returns({name: String, names: T::Array[String], type: String}) }
              def to_hash
              end
            end

            class Polyline < OpenTransit::BaseModel
              sig { returns(T.nilable(Integer)) }
              attr_reader :length

              sig { params(length: Integer).void }
              attr_writer :length

              sig { returns(T.nilable(String)) }
              attr_reader :levels

              sig { params(levels: String).void }
              attr_writer :levels

              sig { returns(T.nilable(String)) }
              attr_reader :points

              sig { params(points: String).void }
              attr_writer :points

              sig { params(length: Integer, levels: String, points: String).void }
              def initialize(length: nil, levels: nil, points: nil)
              end

              sig { override.returns({length: Integer, levels: String, points: String}) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
