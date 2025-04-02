# typed: strong

module OnebusawaySDK
  module Models
    class ScheduleForRouteRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .void
      end
      attr_writer :data

      sig do
        params(
          data: T.any(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry) }
        attr_reader :entry

        sig do
          params(
            entry: T.any(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
          )
            .void
        end
        attr_writer :entry

        sig do
          params(
            entry: T.any(OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(entry:)
        end

        sig { override.returns({entry: OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry}) }
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
          sig { returns(String) }
          attr_accessor :route_id

          sig { returns(Integer) }
          attr_accessor :schedule_date

          sig { returns(T::Array[String]) }
          attr_accessor :service_ids

          sig { returns(T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop]) }
          attr_accessor :stops

          sig { returns(T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping]) }
          attr_accessor :stop_trip_groupings

          sig { returns(T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip]) }
          attr_accessor :trips

          sig do
            params(
              route_id: String,
              schedule_date: Integer,
              service_ids: T::Array[String],
              stops: T::Array[
              T.any(
                OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop,
                OnebusawaySDK::Util::AnyHash
              )
              ],
              stop_trip_groupings: T::Array[
              T.any(
                OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping,
                OnebusawaySDK::Util::AnyHash
              )
              ],
              trips: T::Array[
              T.any(
                OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip,
                OnebusawaySDK::Util::AnyHash
              )
              ]
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

          class StopTripGrouping < OnebusawaySDK::BaseModel
            sig { returns(String) }
            attr_accessor :direction_id

            sig { returns(T::Array[String]) }
            attr_accessor :stop_ids

            sig { returns(T::Array[String]) }
            attr_accessor :trip_headsigns

            sig { returns(T::Array[String]) }
            attr_accessor :trip_ids

            sig do
              returns(
                T.nilable(
                  T::Array[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime]
                )
              )
            end
            attr_reader :trips_with_stop_times

            sig do
              params(
                trips_with_stop_times: T::Array[
                T.any(
                  OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime,
                  OnebusawaySDK::Util::AnyHash
                )
                ]
              )
                .void
            end
            attr_writer :trips_with_stop_times

            sig do
              params(
                direction_id: String,
                stop_ids: T::Array[String],
                trip_headsigns: T::Array[String],
                trip_ids: T::Array[String],
                trips_with_stop_times: T::Array[
                T.any(
                  OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime,
                  OnebusawaySDK::Util::AnyHash
                )
                ]
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
              attr_accessor :stop_times

              sig { returns(String) }
              attr_accessor :trip_id

              sig do
                params(
                  stop_times: T::Array[
                  T.any(
                    OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime,
                    OnebusawaySDK::Util::AnyHash
                  )
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
                attr_accessor :arrival_enabled

                sig { returns(Integer) }
                attr_accessor :arrival_time

                sig { returns(T::Boolean) }
                attr_accessor :departure_enabled

                sig { returns(Integer) }
                attr_accessor :departure_time

                sig { returns(String) }
                attr_accessor :stop_id

                sig { returns(String) }
                attr_accessor :trip_id

                sig { returns(T.nilable(String)) }
                attr_reader :service_id

                sig { params(service_id: String).void }
                attr_writer :service_id

                sig { returns(T.nilable(String)) }
                attr_reader :stop_headsign

                sig { params(stop_headsign: String).void }
                attr_writer :stop_headsign

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
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :route_id

            sig { returns(String) }
            attr_accessor :service_id

            sig { returns(T.nilable(String)) }
            attr_reader :block_id

            sig { params(block_id: String).void }
            attr_writer :block_id

            sig { returns(T.nilable(String)) }
            attr_reader :direction_id

            sig { params(direction_id: String).void }
            attr_writer :direction_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :peak_offpeak

            sig { params(peak_offpeak: Integer).void }
            attr_writer :peak_offpeak

            sig { returns(T.nilable(String)) }
            attr_reader :route_short_name

            sig { params(route_short_name: String).void }
            attr_writer :route_short_name

            sig { returns(T.nilable(String)) }
            attr_reader :shape_id

            sig { params(shape_id: String).void }
            attr_writer :shape_id

            sig { returns(T.nilable(String)) }
            attr_reader :time_zone

            sig { params(time_zone: String).void }
            attr_writer :time_zone

            sig { returns(T.nilable(String)) }
            attr_reader :trip_headsign

            sig { params(trip_headsign: String).void }
            attr_writer :trip_headsign

            sig { returns(T.nilable(String)) }
            attr_reader :trip_short_name

            sig { params(trip_short_name: String).void }
            attr_writer :trip_short_name

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
