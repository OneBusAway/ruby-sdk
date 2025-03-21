# typed: strong

module OnebusawaySDK
  module Models
    class TripDetailRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data) }
      def data
      end

      sig do
        params(_: T.any(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash))
          .returns(T.any(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash))
      end
      def data=(_)
      end

      sig do
        params(data: T.any(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data, OnebusawaySDK::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::TripDetailRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry) }
        def entry
        end

        sig do
          params(
            _: T.any(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
          )
            .returns(
              T.any(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
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
            entry: T.any(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry, OnebusawaySDK::Util::AnyHash),
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
                entry: OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry,
                references: OnebusawaySDK::Models::References
              }
            )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
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

          sig { returns(T.nilable(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Schedule)) }
          def schedule
          end

          sig do
            params(
              _: T.any(
                OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Schedule,
                OnebusawaySDK::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Schedule,
                  OnebusawaySDK::Util::AnyHash
                )
              )
          end
          def schedule=(_)
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

          sig { returns(T.nilable(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status)) }
          def status
          end

          sig do
            params(
              _: T.any(
                OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status,
                OnebusawaySDK::Util::AnyHash
              )
            )
              .returns(
                T.any(
                  OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status,
                  OnebusawaySDK::Util::AnyHash
                )
              )
          end
          def status=(_)
          end

          sig do
            params(
              trip_id: String,
              frequency: T.nilable(String),
              schedule: T.any(
                OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Schedule,
                OnebusawaySDK::Util::AnyHash
              ),
              service_date: Integer,
              situation_ids: T::Array[String],
              status: T.any(
                OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status,
                OnebusawaySDK::Util::AnyHash
              )
            )
              .returns(T.attached_class)
          end
          def self.new(trip_id:, frequency: nil, schedule: nil, service_date: nil, situation_ids: nil, status: nil)
          end

          sig do
            override
              .returns(
                {
                  trip_id: String,
                  frequency: T.nilable(String),
                  schedule: OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Schedule,
                  service_date: Integer,
                  situation_ids: T::Array[String],
                  status: OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status
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

            sig { returns(T::Array[OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Schedule::StopTime]) }
            def stop_times
            end

            sig do
              params(_: T::Array[OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Schedule::StopTime])
                .returns(T::Array[OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Schedule::StopTime])
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
                stop_times: T::Array[OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Schedule::StopTime],
                time_zone: String,
                frequency: T.nilable(String)
              )
                .returns(T.attached_class)
            end
            def self.new(next_trip_id:, previous_trip_id:, stop_times:, time_zone:, frequency: nil)
            end

            sig do
              override
                .returns(
                  {
                    next_trip_id: String,
                    previous_trip_id: String,
                    stop_times: T::Array[OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Schedule::StopTime],
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
                  .returns(T.attached_class)
              end
              def self.new(
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
            # Trip ID of the trip the vehicle is actively serving.
            sig { returns(String) }
            def active_trip_id
            end

            sig { params(_: String).returns(String) }
            def active_trip_id=(_)
            end

            # Index of the active trip into the sequence of trips for the active block.
            sig { returns(Integer) }
            def block_trip_sequence
            end

            sig { params(_: Integer).returns(Integer) }
            def block_trip_sequence=(_)
            end

            # ID of the closest stop to the current location of the transit vehicle.
            sig { returns(String) }
            def closest_stop
            end

            sig { params(_: String).returns(String) }
            def closest_stop=(_)
            end

            # Distance, in meters, the transit vehicle has progressed along the active trip.
            sig { returns(Float) }
            def distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def distance_along_trip=(_)
            end

            # Last known distance along the trip received in real-time from the transit
            #   vehicle.
            sig { returns(Float) }
            def last_known_distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def last_known_distance_along_trip=(_)
            end

            # Timestamp of the last known real-time location update from the transit vehicle.
            sig { returns(Integer) }
            def last_location_update_time
            end

            sig { params(_: Integer).returns(Integer) }
            def last_location_update_time=(_)
            end

            # Timestamp of the last known real-time update from the transit vehicle.
            sig { returns(Integer) }
            def last_update_time
            end

            sig { params(_: Integer).returns(Integer) }
            def last_update_time=(_)
            end

            # Capacity of the transit vehicle in terms of occupancy.
            sig { returns(Integer) }
            def occupancy_capacity
            end

            sig { params(_: Integer).returns(Integer) }
            def occupancy_capacity=(_)
            end

            # Current count of occupants in the transit vehicle.
            sig { returns(Integer) }
            def occupancy_count
            end

            sig { params(_: Integer).returns(Integer) }
            def occupancy_count=(_)
            end

            # Current occupancy status of the transit vehicle.
            sig { returns(String) }
            def occupancy_status
            end

            sig { params(_: String).returns(String) }
            def occupancy_status=(_)
            end

            # Current journey phase of the trip.
            sig { returns(String) }
            def phase
            end

            sig { params(_: String).returns(String) }
            def phase=(_)
            end

            # Indicates if real-time arrival info is available for this trip.
            sig { returns(T::Boolean) }
            def predicted
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def predicted=(_)
            end

            # Deviation from the schedule in seconds (positive for late, negative for early).
            sig { returns(Integer) }
            def schedule_deviation
            end

            sig { params(_: Integer).returns(Integer) }
            def schedule_deviation=(_)
            end

            # Time, in milliseconds since the Unix epoch, of midnight for the start of the
            #   service date for the trip.
            sig { returns(Integer) }
            def service_date
            end

            sig { params(_: Integer).returns(Integer) }
            def service_date=(_)
            end

            # Current status modifiers for the trip.
            sig { returns(String) }
            def status
            end

            sig { params(_: String).returns(String) }
            def status=(_)
            end

            # Total length of the trip, in meters.
            sig { returns(Float) }
            def total_distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def total_distance_along_trip=(_)
            end

            # Time offset from the closest stop to the current position of the transit vehicle
            #   (in seconds).
            sig { returns(T.nilable(Integer)) }
            def closest_stop_time_offset
            end

            sig { params(_: Integer).returns(Integer) }
            def closest_stop_time_offset=(_)
            end

            # Information about frequency-based scheduling, if applicable to the trip.
            sig { returns(T.nilable(String)) }
            def frequency
            end

            sig { params(_: String).returns(String) }
            def frequency=(_)
            end

            # Last known location of the transit vehicle.
            sig do
              returns(
                T.nilable(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status::LastKnownLocation)
              )
            end
            def last_known_location
            end

            sig do
              params(
                _: T.any(
                  OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status::LastKnownLocation,
                  OnebusawaySDK::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status::LastKnownLocation,
                    OnebusawaySDK::Util::AnyHash
                  )
                )
            end
            def last_known_location=(_)
            end

            # Last known orientation value received in real-time from the transit vehicle.
            sig { returns(T.nilable(Float)) }
            def last_known_orientation
            end

            sig { params(_: Float).returns(Float) }
            def last_known_orientation=(_)
            end

            # ID of the next stop the transit vehicle is scheduled to arrive at.
            sig { returns(T.nilable(String)) }
            def next_stop
            end

            sig { params(_: String).returns(String) }
            def next_stop=(_)
            end

            # Time offset from the next stop to the current position of the transit vehicle
            #   (in seconds).
            sig { returns(T.nilable(Integer)) }
            def next_stop_time_offset
            end

            sig { params(_: Integer).returns(Integer) }
            def next_stop_time_offset=(_)
            end

            # Orientation of the transit vehicle, represented as an angle in degrees.
            sig { returns(T.nilable(Float)) }
            def orientation
            end

            sig { params(_: Float).returns(Float) }
            def orientation=(_)
            end

            # Current position of the transit vehicle.
            sig { returns(T.nilable(OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status::Position)) }
            def position
            end

            sig do
              params(
                _: T.any(
                  OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status::Position,
                  OnebusawaySDK::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status::Position,
                    OnebusawaySDK::Util::AnyHash
                  )
                )
            end
            def position=(_)
            end

            # Distance, in meters, the transit vehicle is scheduled to have progressed along
            #   the active trip.
            sig { returns(T.nilable(Float)) }
            def scheduled_distance_along_trip
            end

            sig { params(_: Float).returns(Float) }
            def scheduled_distance_along_trip=(_)
            end

            # References to situation elements (if any) applicable to this trip.
            sig { returns(T.nilable(T::Array[String])) }
            def situation_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def situation_ids=(_)
            end

            # ID of the transit vehicle currently serving the trip.
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
                last_known_location: T.any(
                  OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status::LastKnownLocation,
                  OnebusawaySDK::Util::AnyHash
                ),
                last_known_orientation: Float,
                next_stop: String,
                next_stop_time_offset: Integer,
                orientation: Float,
                position: T.any(
                  OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status::Position,
                  OnebusawaySDK::Util::AnyHash
                ),
                scheduled_distance_along_trip: Float,
                situation_ids: T::Array[String],
                vehicle_id: String
              )
                .returns(T.attached_class)
            end
            def self.new(
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
                    last_known_location: OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status::LastKnownLocation,
                    last_known_orientation: Float,
                    next_stop: String,
                    next_stop_time_offset: Integer,
                    orientation: Float,
                    position: OnebusawaySDK::Models::TripDetailRetrieveResponse::Data::Entry::Status::Position,
                    scheduled_distance_along_trip: Float,
                    situation_ids: T::Array[String],
                    vehicle_id: String
                  }
                )
            end
            def to_hash
            end

            class LastKnownLocation < OnebusawaySDK::BaseModel
              # Latitude of the last known location of the transit vehicle.
              sig { returns(T.nilable(Float)) }
              def lat
              end

              sig { params(_: Float).returns(Float) }
              def lat=(_)
              end

              # Longitude of the last known location of the transit vehicle.
              sig { returns(T.nilable(Float)) }
              def lon
              end

              sig { params(_: Float).returns(Float) }
              def lon=(_)
              end

              # Last known location of the transit vehicle.
              sig { params(lat: Float, lon: Float).returns(T.attached_class) }
              def self.new(lat: nil, lon: nil)
              end

              sig { override.returns({lat: Float, lon: Float}) }
              def to_hash
              end
            end

            class Position < OnebusawaySDK::BaseModel
              # Latitude of the current position of the transit vehicle.
              sig { returns(T.nilable(Float)) }
              def lat
              end

              sig { params(_: Float).returns(Float) }
              def lat=(_)
              end

              # Longitude of the current position of the transit vehicle.
              sig { returns(T.nilable(Float)) }
              def lon
              end

              sig { params(_: Float).returns(Float) }
              def lon=(_)
              end

              # Current position of the transit vehicle.
              sig { params(lat: Float, lon: Float).returns(T.attached_class) }
              def self.new(lat: nil, lon: nil)
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
