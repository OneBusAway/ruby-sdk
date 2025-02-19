# typed: strong

module OnebusawaySDK
  module Models
    class TripsForLocationListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::TripsForLocationListResponse::Data) }
      def data
      end

      sig do
        params(_: OnebusawaySDK::Models::TripsForLocationListResponse::Data)
          .returns(OnebusawaySDK::Models::TripsForLocationListResponse::Data)
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::TripsForLocationListResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::TripsForLocationListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(T::Boolean) }
        def limit_exceeded
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def limit_exceeded=(_)
        end

        sig { returns(T::Array[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List]) }
        def list
        end

        sig do
          params(_: T::Array[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List])
            .returns(T::Array[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List])
        end
        def list=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig { params(_: OnebusawaySDK::Models::References).returns(OnebusawaySDK::Models::References) }
        def references=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def out_of_range
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def out_of_range=(_)
        end

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List],
            references: OnebusawaySDK::Models::References,
            out_of_range: T::Boolean
          )
            .void
        end
        def initialize(limit_exceeded:, list:, references:, out_of_range: nil)
        end

        sig do
          override
            .returns(
              {
                limit_exceeded: T::Boolean,
                list: T::Array[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List],
                references: OnebusawaySDK::Models::References,
                out_of_range: T::Boolean
              }
            )
        end
        def to_hash
        end

        class List < OnebusawaySDK::BaseModel
          sig { returns(OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule) }
          def schedule
          end

          sig do
            params(_: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule)
              .returns(OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule)
          end
          def schedule=(_)
          end

          sig { returns(OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status) }
          def status
          end

          sig do
            params(_: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status)
              .returns(OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status)
          end
          def status=(_)
          end

          sig { returns(String) }
          def trip_id
          end

          sig { params(_: String).returns(String) }
          def trip_id=(_)
          end

          sig { returns(T.nilable(String)) }
          def frequency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def frequency=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def service_date
          end

          sig { params(_: Integer).returns(Integer) }
          def service_date=(_)
          end

          sig { returns(T.nilable(T::Array[String])) }
          def situation_ids
          end

          sig { params(_: T::Array[String]).returns(T::Array[String]) }
          def situation_ids=(_)
          end

          sig do
            params(
              schedule: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule,
              status: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status,
              trip_id: String,
              frequency: T.nilable(String),
              service_date: Integer,
              situation_ids: T::Array[String]
            )
              .void
          end
          def initialize(schedule:, status:, trip_id:, frequency: nil, service_date: nil, situation_ids: nil)
          end

          sig do
            override
              .returns(
                {
                  schedule: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule,
                  status: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status,
                  trip_id: String,
                  frequency: T.nilable(String),
                  service_date: Integer,
                  situation_ids: T::Array[String]
                }
              )
          end
          def to_hash
          end

          class Schedule < OnebusawaySDK::BaseModel
            sig { returns(String) }
            def next_trip_id
            end

            sig { params(_: String).returns(String) }
            def next_trip_id=(_)
            end

            sig { returns(String) }
            def previous_trip_id
            end

            sig { params(_: String).returns(String) }
            def previous_trip_id=(_)
            end

            sig { returns(T::Array[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule::StopTime]) }
            def stop_times
            end

            sig do
              params(_: T::Array[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule::StopTime])
                .returns(T::Array[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule::StopTime])
            end
            def stop_times=(_)
            end

            sig { returns(String) }
            def time_zone
            end

            sig { params(_: String).returns(String) }
            def time_zone=(_)
            end

            sig { returns(T.nilable(String)) }
            def frequency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def frequency=(_)
            end

            sig do
              params(
                next_trip_id: String,
                previous_trip_id: String,
                stop_times: T::Array[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule::StopTime],
                time_zone: String,
                frequency: T.nilable(String)
              )
                .void
            end
            def initialize(next_trip_id:, previous_trip_id:, stop_times:, time_zone:, frequency: nil)
            end

            sig do
              override
                .returns(
                  {
                    next_trip_id: String,
                    previous_trip_id: String,
                    stop_times: T::Array[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule::StopTime],
                    time_zone: String,
                    frequency: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class StopTime < OnebusawaySDK::BaseModel
              sig { returns(T.nilable(Integer)) }
              def arrival_time
              end

              sig { params(_: Integer).returns(Integer) }
              def arrival_time=(_)
              end

              sig { returns(T.nilable(Integer)) }
              def departure_time
              end

              sig { params(_: Integer).returns(Integer) }
              def departure_time=(_)
              end

              sig { returns(T.nilable(Float)) }
              def distance_along_trip
              end

              sig { params(_: Float).returns(Float) }
              def distance_along_trip=(_)
              end

              sig { returns(T.nilable(String)) }
              def historical_occupancy
              end

              sig { params(_: String).returns(String) }
              def historical_occupancy=(_)
              end

              sig { returns(T.nilable(String)) }
              def stop_headsign
              end

              sig { params(_: String).returns(String) }
              def stop_headsign=(_)
              end

              sig { returns(T.nilable(String)) }
              def stop_id
              end

              sig { params(_: String).returns(String) }
              def stop_id=(_)
              end

              sig do
                params(
                  arrival_time: Integer,
                  departure_time: Integer,
                  distance_along_trip: Float,
                  historical_occupancy: String,
                  stop_headsign: String,
                  stop_id: String
                )
                  .void
              end
              def initialize(
                arrival_time: nil,
                departure_time: nil,
                distance_along_trip: nil,
                historical_occupancy: nil,
                stop_headsign: nil,
                stop_id: nil
              )
              end

              sig do
                override
                  .returns(
                    {
                      arrival_time: Integer,
                      departure_time: Integer,
                      distance_along_trip: Float,
                      historical_occupancy: String,
                      stop_headsign: String,
                      stop_id: String
                    }
                  )
              end
              def to_hash
              end
            end
          end

          class Status < OnebusawaySDK::BaseModel
            sig { returns(String) }
            def active_trip_id
            end

            sig { params(_: String).returns(String) }
            def active_trip_id=(_)
            end

            sig { returns(Integer) }
            def block_trip_sequence
            end

            sig { params(_: Integer).returns(Integer) }
            def block_trip_sequence=(_)
            end

            sig { returns(String) }
            def closest_stop
            end

            sig { params(_: String).returns(String) }
            def closest_stop=(_)
            end

            sig { returns(Float) }
            def distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def distance_along_trip=(_)
            end

            sig { returns(Float) }
            def last_known_distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def last_known_distance_along_trip=(_)
            end

            sig { returns(Integer) }
            def last_location_update_time
            end

            sig { params(_: Integer).returns(Integer) }
            def last_location_update_time=(_)
            end

            sig { returns(Integer) }
            def last_update_time
            end

            sig { params(_: Integer).returns(Integer) }
            def last_update_time=(_)
            end

            sig { returns(Integer) }
            def occupancy_capacity
            end

            sig { params(_: Integer).returns(Integer) }
            def occupancy_capacity=(_)
            end

            sig { returns(Integer) }
            def occupancy_count
            end

            sig { params(_: Integer).returns(Integer) }
            def occupancy_count=(_)
            end

            sig { returns(String) }
            def occupancy_status
            end

            sig { params(_: String).returns(String) }
            def occupancy_status=(_)
            end

            sig { returns(String) }
            def phase
            end

            sig { params(_: String).returns(String) }
            def phase=(_)
            end

            sig { returns(T::Boolean) }
            def predicted
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def predicted=(_)
            end

            sig { returns(Integer) }
            def schedule_deviation
            end

            sig { params(_: Integer).returns(Integer) }
            def schedule_deviation=(_)
            end

            sig { returns(Integer) }
            def service_date
            end

            sig { params(_: Integer).returns(Integer) }
            def service_date=(_)
            end

            sig { returns(String) }
            def status
            end

            sig { params(_: String).returns(String) }
            def status=(_)
            end

            sig { returns(Float) }
            def total_distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def total_distance_along_trip=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def closest_stop_time_offset
            end

            sig { params(_: Integer).returns(Integer) }
            def closest_stop_time_offset=(_)
            end

            sig { returns(T.nilable(String)) }
            def frequency
            end

            sig { params(_: String).returns(String) }
            def frequency=(_)
            end

            sig do
              returns(
                T.nilable(OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation)
              )
            end
            def last_known_location
            end

            sig do
              params(_: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation)
                .returns(OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation)
            end
            def last_known_location=(_)
            end

            sig { returns(T.nilable(Float)) }
            def last_known_orientation
            end

            sig { params(_: Float).returns(Float) }
            def last_known_orientation=(_)
            end

            sig { returns(T.nilable(String)) }
            def next_stop
            end

            sig { params(_: String).returns(String) }
            def next_stop=(_)
            end

            sig { returns(T.nilable(Integer)) }
            def next_stop_time_offset
            end

            sig { params(_: Integer).returns(Integer) }
            def next_stop_time_offset=(_)
            end

            sig { returns(T.nilable(Float)) }
            def orientation
            end

            sig { params(_: Float).returns(Float) }
            def orientation=(_)
            end

            sig { returns(T.nilable(OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::Position)) }
            def position
            end

            sig do
              params(_: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::Position)
                .returns(OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::Position)
            end
            def position=(_)
            end

            sig { returns(T.nilable(Float)) }
            def scheduled_distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def scheduled_distance_along_trip=(_)
            end

            sig { returns(T.nilable(T::Array[String])) }
            def situation_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def situation_ids=(_)
            end

            sig { returns(T.nilable(String)) }
            def vehicle_id
            end

            sig { params(_: String).returns(String) }
            def vehicle_id=(_)
            end

            sig do
              params(
                active_trip_id: String,
                block_trip_sequence: Integer,
                closest_stop: String,
                distance_along_trip: Float,
                last_known_distance_along_trip: Float,
                last_location_update_time: Integer,
                last_update_time: Integer,
                occupancy_capacity: Integer,
                occupancy_count: Integer,
                occupancy_status: String,
                phase: String,
                predicted: T::Boolean,
                schedule_deviation: Integer,
                service_date: Integer,
                status: String,
                total_distance_along_trip: Float,
                closest_stop_time_offset: Integer,
                frequency: String,
                last_known_location: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation,
                last_known_orientation: Float,
                next_stop: String,
                next_stop_time_offset: Integer,
                orientation: Float,
                position: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::Position,
                scheduled_distance_along_trip: Float,
                situation_ids: T::Array[String],
                vehicle_id: String
              )
                .void
            end
            def initialize(
              active_trip_id:,
              block_trip_sequence:,
              closest_stop:,
              distance_along_trip:,
              last_known_distance_along_trip:,
              last_location_update_time:,
              last_update_time:,
              occupancy_capacity:,
              occupancy_count:,
              occupancy_status:,
              phase:,
              predicted:,
              schedule_deviation:,
              service_date:,
              status:,
              total_distance_along_trip:,
              closest_stop_time_offset: nil,
              frequency: nil,
              last_known_location: nil,
              last_known_orientation: nil,
              next_stop: nil,
              next_stop_time_offset: nil,
              orientation: nil,
              position: nil,
              scheduled_distance_along_trip: nil,
              situation_ids: nil,
              vehicle_id: nil
            )
            end

            sig do
              override
                .returns(
                  {
                    active_trip_id: String,
                    block_trip_sequence: Integer,
                    closest_stop: String,
                    distance_along_trip: Float,
                    last_known_distance_along_trip: Float,
                    last_location_update_time: Integer,
                    last_update_time: Integer,
                    occupancy_capacity: Integer,
                    occupancy_count: Integer,
                    occupancy_status: String,
                    phase: String,
                    predicted: T::Boolean,
                    schedule_deviation: Integer,
                    service_date: Integer,
                    status: String,
                    total_distance_along_trip: Float,
                    closest_stop_time_offset: Integer,
                    frequency: String,
                    last_known_location: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation,
                    last_known_orientation: Float,
                    next_stop: String,
                    next_stop_time_offset: Integer,
                    orientation: Float,
                    position: OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::Position,
                    scheduled_distance_along_trip: Float,
                    situation_ids: T::Array[String],
                    vehicle_id: String
                  }
                )
            end
            def to_hash
            end

            class LastKnownLocation < OnebusawaySDK::BaseModel
              sig { returns(T.nilable(Float)) }
              def lat
              end

              sig { params(_: Float).returns(Float) }
              def lat=(_)
              end

              sig { returns(T.nilable(Float)) }
              def lon
              end

              sig { params(_: Float).returns(Float) }
              def lon=(_)
              end

              sig { params(lat: Float, lon: Float).void }
              def initialize(lat: nil, lon: nil)
              end

              sig { override.returns({lat: Float, lon: Float}) }
              def to_hash
              end
            end

            class Position < OnebusawaySDK::BaseModel
              sig { returns(T.nilable(Float)) }
              def lat
              end

              sig { params(_: Float).returns(Float) }
              def lat=(_)
              end

              sig { returns(T.nilable(Float)) }
              def lon
              end

              sig { params(_: Float).returns(Float) }
              def lon=(_)
              end

              sig { params(lat: Float, lon: Float).void }
              def initialize(lat: nil, lon: nil)
              end

              sig { override.returns({lat: Float, lon: Float}) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
