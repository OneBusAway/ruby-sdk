# typed: strong

module OnebusawaySDK
  module Models
    class ScheduleForRouteRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data) }
      def data
      end

      sig do
        params(_: OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data)
          .returns(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry) }
        def entry
        end

        sig do
          params(_: OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry)
            .returns(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry)
        end
        def entry=(_)
        end

        sig do
          params(entry: OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry)
            .returns(T.attached_class)
        end
        def self.new(entry:)
        end

        sig { override.returns({entry: OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry}) }
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
          sig { returns(String) }
          def route_id
          end

          sig { params(_: String).returns(String) }
          def route_id=(_)
          end

          sig { returns(Integer) }
          def schedule_date
          end

          sig { params(_: Integer).returns(Integer) }
          def schedule_date=(_)
          end

          sig { returns(T::Array[String]) }
          def service_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def service_ids=(_)
          end

          sig { returns(T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop]) }
          def stops
          end

          sig do
            params(_: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop])
              .returns(T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop])
          end
          def stops=(_)
          end

          sig { returns(T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping]) }
          def stop_trip_groupings
          end

          sig do
            params(
              _: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping]
            )
              .returns(T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping])
          end
          def stop_trip_groupings=(_)
          end

          sig { returns(T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip]) }
          def trips
          end

          sig do
            params(_: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip])
              .returns(T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip])
          end
          def trips=(_)
          end

          sig do
            params(
              route_id: String,
              schedule_date: Integer,
              service_ids: T::Array[String],
              stops: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop],
              stop_trip_groupings: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping],
              trips: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip]
            )
              .returns(T.attached_class)
          end
          def self.new(route_id:, schedule_date:, service_ids:, stops:, stop_trip_groupings:, trips:)
          end

          sig do
            override
              .returns(
                {
                  route_id: String,
                  schedule_date: Integer,
                  service_ids: T::Array[String],
                  stops: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop],
                  stop_trip_groupings: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping],
                  trips: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip]
                }
              )
          end
          def to_hash
          end

          class Stop < OnebusawaySDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(Float) }
            def lat
            end

            sig { params(_: Float).returns(Float) }
            def lat=(_)
            end

            sig { returns(Float) }
            def lon
            end

            sig { params(_: Float).returns(Float) }
            def lon=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(String) }
            def parent
            end

            sig { params(_: String).returns(String) }
            def parent=(_)
            end

            sig { returns(T::Array[String]) }
            def route_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def route_ids=(_)
            end

            sig { returns(T::Array[String]) }
            def static_route_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def static_route_ids=(_)
            end

            sig { returns(T.nilable(String)) }
            def code
            end

            sig { params(_: String).returns(String) }
            def code=(_)
            end

            sig { returns(T.nilable(String)) }
            def direction
            end

            sig { params(_: String).returns(String) }
            def direction=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def location_type
            end

            sig { params(_: Integer).returns(Integer) }
            def location_type=(_)
            end

            sig { returns(T.nilable(String)) }
            def wheelchair_boarding
            end

            sig { params(_: String).returns(String) }
            def wheelchair_boarding=(_)
            end

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

          class StopTripGrouping < OnebusawaySDK::BaseModel
            sig { returns(String) }
            def direction_id
            end

            sig { params(_: String).returns(String) }
            def direction_id=(_)
            end

            sig { returns(T::Array[String]) }
            def stop_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def stop_ids=(_)
            end

            sig { returns(T::Array[String]) }
            def trip_headsigns
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def trip_headsigns=(_)
            end

            sig { returns(T::Array[String]) }
            def trip_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def trip_ids=(_)
            end

            sig do
              returns(
                T.nilable(
                  T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime]
                )
              )
            end
            def trips_with_stop_times
            end

            sig do
              params(
                _: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime]
              )
                .returns(
                  T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime]
                )
            end
            def trips_with_stop_times=(_)
            end

            sig do
              params(
                direction_id: String,
                stop_ids: T::Array[String],
                trip_headsigns: T::Array[String],
                trip_ids: T::Array[String],
                trips_with_stop_times: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime]
              )
                .returns(T.attached_class)
            end
            def self.new(direction_id:, stop_ids:, trip_headsigns:, trip_ids:, trips_with_stop_times: nil)
            end

            sig do
              override
                .returns(
                  {
                    direction_id: String,
                    stop_ids: T::Array[String],
                    trip_headsigns: T::Array[String],
                    trip_ids: T::Array[String],
                    trips_with_stop_times: T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime]
                  }
                )
            end
            def to_hash
            end

            class TripsWithStopTime < OnebusawaySDK::BaseModel
              sig do
                returns(
                  T::Array[
                  OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime
                  ]
                )
              end
              def stop_times
              end

              sig do
                params(
                  _: T::Array[
                  OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime
                  ]
                )
                  .returns(
                    T::Array[
                    OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime
                    ]
                  )
              end
              def stop_times=(_)
              end

              sig { returns(String) }
              def trip_id
              end

              sig { params(_: String).returns(String) }
              def trip_id=(_)
              end

              sig do
                params(
                  stop_times: T::Array[
                  OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime
                  ],
                  trip_id: String
                )
                  .returns(T.attached_class)
              end
              def self.new(stop_times:, trip_id:)
              end

              sig do
                override
                  .returns(
                    {
                      stop_times: T::Array[
                      OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime
                      ],
                      trip_id: String
                    }
                  )
              end
              def to_hash
              end

              class StopTime < OnebusawaySDK::BaseModel
                sig { returns(T::Boolean) }
                def arrival_enabled
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def arrival_enabled=(_)
                end

                sig { returns(Integer) }
                def arrival_time
                end

                sig { params(_: Integer).returns(Integer) }
                def arrival_time=(_)
                end

                sig { returns(T::Boolean) }
                def departure_enabled
                end

                sig { params(_: T::Boolean).returns(T::Boolean) }
                def departure_enabled=(_)
                end

                sig { returns(Integer) }
                def departure_time
                end

                sig { params(_: Integer).returns(Integer) }
                def departure_time=(_)
                end

                sig { returns(String) }
                def stop_id
                end

                sig { params(_: String).returns(String) }
                def stop_id=(_)
                end

                sig { returns(String) }
                def trip_id
                end

                sig { params(_: String).returns(String) }
                def trip_id=(_)
                end

                sig { returns(T.nilable(String)) }
                def service_id
                end

                sig { params(_: String).returns(String) }
                def service_id=(_)
                end

                sig { returns(T.nilable(String)) }
                def stop_headsign
                end

                sig { params(_: String).returns(String) }
                def stop_headsign=(_)
                end

                sig do
                  params(
                    arrival_enabled: T::Boolean,
                    arrival_time: Integer,
                    departure_enabled: T::Boolean,
                    departure_time: Integer,
                    stop_id: String,
                    trip_id: String,
                    service_id: String,
                    stop_headsign: String
                  )
                    .returns(T.attached_class)
                end
                def self.new(
                  arrival_enabled:,
                  arrival_time:,
                  departure_enabled:,
                  departure_time:,
                  stop_id:,
                  trip_id:,
                  service_id: nil,
                  stop_headsign: nil
                )
                end

                sig do
                  override
                    .returns(
                      {
                        arrival_enabled: T::Boolean,
                        arrival_time: Integer,
                        departure_enabled: T::Boolean,
                        departure_time: Integer,
                        stop_id: String,
                        trip_id: String,
                        service_id: String,
                        stop_headsign: String
                      }
                    )
                end
                def to_hash
                end
              end
            end
          end

          class Trip < OnebusawaySDK::BaseModel
            sig { returns(String) }
            def id
            end

            sig { params(_: String).returns(String) }
            def id=(_)
            end

            sig { returns(String) }
            def route_id
            end

            sig { params(_: String).returns(String) }
            def route_id=(_)
            end

            sig { returns(String) }
            def service_id
            end

            sig { params(_: String).returns(String) }
            def service_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def block_id
            end

            sig { params(_: String).returns(String) }
            def block_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def direction_id
            end

            sig { params(_: String).returns(String) }
            def direction_id=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def peak_offpeak
            end

            sig { params(_: Integer).returns(Integer) }
            def peak_offpeak=(_)
            end

            sig { returns(T.nilable(String)) }
            def route_short_name
            end

            sig { params(_: String).returns(String) }
            def route_short_name=(_)
            end

            sig { returns(T.nilable(String)) }
            def shape_id
            end

            sig { params(_: String).returns(String) }
            def shape_id=(_)
            end

            sig { returns(T.nilable(String)) }
            def time_zone
            end

            sig { params(_: String).returns(String) }
            def time_zone=(_)
            end

            sig { returns(T.nilable(String)) }
            def trip_headsign
            end

            sig { params(_: String).returns(String) }
            def trip_headsign=(_)
            end

            sig { returns(T.nilable(String)) }
            def trip_short_name
            end

            sig { params(_: String).returns(String) }
            def trip_short_name=(_)
            end

            sig do
              params(
                id: String,
                route_id: String,
                service_id: String,
                block_id: String,
                direction_id: String,
                peak_offpeak: Integer,
                route_short_name: String,
                shape_id: String,
                time_zone: String,
                trip_headsign: String,
                trip_short_name: String
              )
                .returns(T.attached_class)
            end
            def self.new(
              id:,
              route_id:,
              service_id:,
              block_id: nil,
              direction_id: nil,
              peak_offpeak: nil,
              route_short_name: nil,
              shape_id: nil,
              time_zone: nil,
              trip_headsign: nil,
              trip_short_name: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    id: String,
                    route_id: String,
                    service_id: String,
                    block_id: String,
                    direction_id: String,
                    peak_offpeak: Integer,
                    route_short_name: String,
                    shape_id: String,
                    time_zone: String,
                    trip_headsign: String,
                    trip_short_name: String
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
end
