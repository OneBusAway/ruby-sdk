# typed: strong

module OnebusawaySDK
  module Models
    class StopsForRouteListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::StopsForRouteListResponse::Data) }
      attr_reader :data

      sig do
        params(data: T.any(OnebusawaySDK::Models::StopsForRouteListResponse::Data, OnebusawaySDK::Util::AnyHash))
          .void
      end
      attr_writer :data

      sig do
        params(data: T.any(OnebusawaySDK::Models::StopsForRouteListResponse::Data, OnebusawaySDK::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::StopsForRouteListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry) }
        attr_reader :entry

        sig do
          params(
            entry: T.any(OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
          )
            .void
        end
        attr_writer :entry

        sig { returns(OnebusawaySDK::Models::References) }
        attr_reader :references

        sig { params(references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash)).void }
        attr_writer :references

        sig do
          params(
            entry: T.any(OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry, OnebusawaySDK::Util::AnyHash),
            references: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override
            .returns(
              {
                entry: OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry,
                references: OnebusawaySDK::Models::References
              }
            )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
          sig { returns(T.nilable(T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline])) }
          attr_reader :polylines

          sig do
            params(
              polylines: T::Array[
              T.any(
                OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline,
                OnebusawaySDK::Util::AnyHash
              )
              ]
            )
              .void
          end
          attr_writer :polylines

          sig { returns(T.nilable(String)) }
          attr_reader :route_id

          sig { params(route_id: String).void }
          attr_writer :route_id

          sig { returns(T.nilable(T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping])) }
          attr_reader :stop_groupings

          sig do
            params(
              stop_groupings: T::Array[
              T.any(
                OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping,
                OnebusawaySDK::Util::AnyHash
              )
              ]
            )
              .void
          end
          attr_writer :stop_groupings

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :stop_ids

          sig { params(stop_ids: T::Array[String]).void }
          attr_writer :stop_ids

          sig do
            params(
              polylines: T::Array[
              T.any(
                OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline,
                OnebusawaySDK::Util::AnyHash
              )
              ],
              route_id: String,
              stop_groupings: T::Array[
              T.any(
                OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping,
                OnebusawaySDK::Util::AnyHash
              )
              ],
              stop_ids: T::Array[String]
            )
              .returns(T.attached_class)
          end
          def self.new(polylines: nil, route_id: nil, stop_groupings: nil, stop_ids: nil)
          end

          sig do
            override
              .returns(
                {
                  polylines: T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline],
                  route_id: String,
                  stop_groupings: T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping],
                  stop_ids: T::Array[String]
                }
              )
          end
          def to_hash
          end

          class Polyline < OnebusawaySDK::BaseModel
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

            sig { params(length: Integer, levels: String, points: String).returns(T.attached_class) }
            def self.new(length: nil, levels: nil, points: nil)
            end

            sig { override.returns({length: Integer, levels: String, points: String}) }
            def to_hash
            end
          end

          class StopGrouping < OnebusawaySDK::BaseModel
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name)) }
            attr_reader :name

            sig do
              params(
                name: T.any(
                  OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name,
                  OnebusawaySDK::Util::AnyHash
                )
              )
                .void
            end
            attr_writer :name

            sig do
              returns(
                T.nilable(T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline])
              )
            end
            attr_reader :polylines

            sig do
              params(
                polylines: T::Array[
                T.any(
                  OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline,
                  OnebusawaySDK::Util::AnyHash
                )
                ]
              )
                .void
            end
            attr_writer :polylines

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :stop_ids

            sig { params(stop_ids: T::Array[String]).void }
            attr_writer :stop_ids

            sig do
              params(
                id: String,
                name: T.any(
                  OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name,
                  OnebusawaySDK::Util::AnyHash
                ),
                polylines: T::Array[
                T.any(
                  OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline,
                  OnebusawaySDK::Util::AnyHash
                )
                ],
                stop_ids: T::Array[String]
              )
                .returns(T.attached_class)
            end
            def self.new(id: nil, name: nil, polylines: nil, stop_ids: nil)
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    name: OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name,
                    polylines: T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline],
                    stop_ids: T::Array[String]
                  }
                )
            end
            def to_hash
            end

            class Name < OnebusawaySDK::BaseModel
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

              sig { params(name: String, names: T::Array[String], type: String).returns(T.attached_class) }
              def self.new(name: nil, names: nil, type: nil)
              end

              sig { override.returns({name: String, names: T::Array[String], type: String}) }
              def to_hash
              end
            end

            class Polyline < OnebusawaySDK::BaseModel
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

              sig { params(length: Integer, levels: String, points: String).returns(T.attached_class) }
              def self.new(length: nil, levels: nil, points: nil)
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
