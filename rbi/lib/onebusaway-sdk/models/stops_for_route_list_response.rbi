# typed: strong

module OnebusawaySDK
  module Models
    class StopsForRouteListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::StopsForRouteListResponse::Data) }
      def data
      end

      sig do
        params(_: T.any(OnebusawaySDK::Models::StopsForRouteListResponse::Data, OnebusawaySDK::Util::AnyHash))
          .returns(T.any(OnebusawaySDK::Models::StopsForRouteListResponse::Data, OnebusawaySDK::Util::AnyHash))
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::StopsForRouteListResponse::Data).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::StopsForRouteListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry) }
        def entry
        end

        sig do
          params(
            _: T.any(OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
          )
            .returns(
              T.any(OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
            )
        end
        def entry=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig do
          params(_: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash))
            .returns(T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash))
        end
        def references=(_)
        end

        sig do
          params(
            entry: OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry,
            references: OnebusawaySDK::Models::References
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
          def polylines
          end

          sig do
            params(_: T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline])
              .returns(T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline])
          end
          def polylines=(_)
          end

          sig { returns(T.nilable(String)) }
          def route_id
          end

          sig { params(_: String).returns(String) }
          def route_id=(_)
          end

          sig { returns(T.nilable(T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping])) }
          def stop_groupings
          end

          sig do
            params(_: T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping])
              .returns(T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping])
          end
          def stop_groupings=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def stop_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def stop_ids=(_)
          end

          sig do
            params(
              polylines: T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::Polyline],
              route_id: String,
              stop_groupings: T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping],
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
            def length
            end

            sig { params(_: Integer).returns(Integer) }
            def length=(_)
            end

            sig { returns(T.nilable(String)) }
            def levels
            end

            sig { params(_: String).returns(String) }
            def levels=(_)
            end

            sig { returns(T.nilable(String)) }
            def points
            end

            sig { params(_: String).returns(String) }
            def points=(_)
            end

            sig { params(length: Integer, levels: String, points: String).returns(T.attached_class) }
            def self.new(length: nil, levels: nil, points: nil)
            end

            sig { override.returns({length: Integer, levels: String, points: String}) }
            def to_hash
            end
          end

          class StopGrouping < OnebusawaySDK::BaseModel
            sig { returns(T.nilable(String)) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(T.nilable(OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name)) }
            def name
            end

            sig do
              params(
                _: T.any(
                  OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name,
                  OnebusawaySDK::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name,
                    OnebusawaySDK::Util::AnyHash
                  )
                )
            end
            def name=(_)
            end

            sig do
              returns(
                T.nilable(T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline])
              )
            end
            def polylines
            end

            sig do
              params(_: T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline])
                .returns(T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline])
            end
            def polylines=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def stop_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def stop_ids=(_)
            end

            sig do
              params(
                id: String,
                name: OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Name,
                polylines: T::Array[OnebusawaySDK::Models::StopsForRouteListResponse::Data::Entry::StopGrouping::Polyline],
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
              def name
              end

              sig { params(_: String).returns(String) }
              def name=(_)
              end

              sig { returns(T.nilable(T::Array[String])) }
              def names
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def names=(_)
              end

              sig { returns(T.nilable(String)) }
              def type
              end

              sig { params(_: String).returns(String) }
              def type=(_)
              end

              sig { params(name: String, names: T::Array[String], type: String).returns(T.attached_class) }
              def self.new(name: nil, names: nil, type: nil)
              end

              sig { override.returns({name: String, names: T::Array[String], type: String}) }
              def to_hash
              end
            end

            class Polyline < OnebusawaySDK::BaseModel
              sig { returns(T.nilable(Integer)) }
              def length
              end

              sig { params(_: Integer).returns(Integer) }
              def length=(_)
              end

              sig { returns(T.nilable(String)) }
              def levels
              end

              sig { params(_: String).returns(String) }
              def levels=(_)
              end

              sig { returns(T.nilable(String)) }
              def points
              end

              sig { params(_: String).returns(String) }
              def points=(_)
              end

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
