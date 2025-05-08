# typed: strong

module OnebusawaySDK
  module Models
    class TripForVehicleRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      OrHash =
        T.type_alias { T.any(T.self_type, OnebusawaySDK::Internal::AnyHash) }

      sig do
        returns(OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data)
      end
      attr_reader :data

      sig do
        params(
          data:
            OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, OnebusawaySDK::Internal::AnyHash) }

        sig do
          returns(
            OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry
          )
        end
        attr_reader :entry

        sig do
          params(
            entry:
              OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::OrHash
          ).void
        end
        attr_writer :entry

        sig { returns(OnebusawaySDK::References) }
        attr_reader :references

        sig { params(references: OnebusawaySDK::References::OrHash).void }
        attr_writer :references

        sig do
          params(
            entry:
              OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::OrHash,
            references: OnebusawaySDK::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry:
                OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry,
              references: OnebusawaySDK::References
            }
          )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(T.self_type, OnebusawaySDK::Internal::AnyHash)
            end

          sig { returns(String) }
          attr_accessor :trip_id

          sig { returns(T.nilable(String)) }
          attr_accessor :frequency

          sig do
            returns(
              T.nilable(
                OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule
              )
            )
          end
          attr_reader :schedule

          sig do
            params(
              schedule:
                OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule::OrHash
            ).void
          end
          attr_writer :schedule

          sig { returns(T.nilable(Integer)) }
          attr_reader :service_date

          sig { params(service_date: Integer).void }
          attr_writer :service_date

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :situation_ids

          sig { params(situation_ids: T::Array[String]).void }
          attr_writer :situation_ids

          sig do
            returns(
              T.nilable(
                OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::OrHash
            ).void
          end
          attr_writer :status

          sig do
            params(
              trip_id: String,
              frequency: T.nilable(String),
              schedule:
                OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule::OrHash,
              service_date: Integer,
              situation_ids: T::Array[String],
              status:
                OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            trip_id:,
            frequency: nil,
            schedule: nil,
            service_date: nil,
            situation_ids: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                trip_id: String,
                frequency: T.nilable(String),
                schedule:
                  OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule,
                service_date: Integer,
                situation_ids: T::Array[String],
                status:
                  OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status
              }
            )
          end
          def to_hash
          end

          class Schedule < OnebusawaySDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(T.self_type, OnebusawaySDK::Internal::AnyHash)
              end

            sig { returns(String) }
            attr_accessor :next_trip_id

            sig { returns(String) }
            attr_accessor :previous_trip_id

            sig do
              returns(
                T::Array[
                  OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule::StopTime
                ]
              )
            end
            attr_accessor :stop_times

            sig { returns(String) }
            attr_accessor :time_zone

            sig { returns(T.nilable(String)) }
            attr_accessor :frequency

            sig do
              params(
                next_trip_id: String,
                previous_trip_id: String,
                stop_times:
                  T::Array[
                    OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule::StopTime::OrHash
                  ],
                time_zone: String,
                frequency: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              next_trip_id:,
              previous_trip_id:,
              stop_times:,
              time_zone:,
              frequency: nil
            )
            end

            sig do
              override.returns(
                {
                  next_trip_id: String,
                  previous_trip_id: String,
                  stop_times:
                    T::Array[
                      OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule::StopTime
                    ],
                  time_zone: String,
                  frequency: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class StopTime < OnebusawaySDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(T.self_type, OnebusawaySDK::Internal::AnyHash)
                end

              sig { returns(T.nilable(Integer)) }
              attr_reader :arrival_time

              sig { params(arrival_time: Integer).void }
              attr_writer :arrival_time

              sig { returns(T.nilable(Integer)) }
              attr_reader :departure_time

              sig { params(departure_time: Integer).void }
              attr_writer :departure_time

              sig { returns(T.nilable(Float)) }
              attr_reader :distance_along_trip

              sig { params(distance_along_trip: Float).void }
              attr_writer :distance_along_trip

              sig { returns(T.nilable(String)) }
              attr_reader :historical_occupancy

              sig { params(historical_occupancy: String).void }
              attr_writer :historical_occupancy

              sig { returns(T.nilable(String)) }
              attr_reader :stop_headsign

              sig { params(stop_headsign: String).void }
              attr_writer :stop_headsign

              sig { returns(T.nilable(String)) }
              attr_reader :stop_id

              sig { params(stop_id: String).void }
              attr_writer :stop_id

              sig do
                params(
                  arrival_time: Integer,
                  departure_time: Integer,
                  distance_along_trip: Float,
                  historical_occupancy: String,
                  stop_headsign: String,
                  stop_id: String
                ).returns(T.attached_class)
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
                override.returns(
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

          class Status < OnebusawaySDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(T.self_type, OnebusawaySDK::Internal::AnyHash)
              end

            # Trip ID of the trip the vehicle is actively serving.
            sig { returns(String) }
            attr_accessor :active_trip_id

            # Index of the active trip into the sequence of trips for the active block.
            sig { returns(Integer) }
            attr_accessor :block_trip_sequence

            # ID of the closest stop to the current location of the transit vehicle.
            sig { returns(String) }
            attr_accessor :closest_stop

            # Distance, in meters, the transit vehicle has progressed along the active trip.
            sig { returns(Float) }
            attr_accessor :distance_along_trip

            # Last known distance along the trip received in real-time from the transit
            # vehicle.
            sig { returns(Float) }
            attr_accessor :last_known_distance_along_trip

            # Timestamp of the last known real-time location update from the transit vehicle.
            sig { returns(Integer) }
            attr_accessor :last_location_update_time

            # Timestamp of the last known real-time update from the transit vehicle.
            sig { returns(Integer) }
            attr_accessor :last_update_time

            # Capacity of the transit vehicle in terms of occupancy.
            sig { returns(Integer) }
            attr_accessor :occupancy_capacity

            # Current count of occupants in the transit vehicle.
            sig { returns(Integer) }
            attr_accessor :occupancy_count

            # Current occupancy status of the transit vehicle.
            sig { returns(String) }
            attr_accessor :occupancy_status

            # Current journey phase of the trip.
            sig { returns(String) }
            attr_accessor :phase

            # Indicates if real-time arrival info is available for this trip.
            sig { returns(T::Boolean) }
            attr_accessor :predicted

            # Deviation from the schedule in seconds (positive for late, negative for early).
            sig { returns(Integer) }
            attr_accessor :schedule_deviation

            # Time, in milliseconds since the Unix epoch, of midnight for the start of the
            # service date for the trip.
            sig { returns(Integer) }
            attr_accessor :service_date

            # Current status modifiers for the trip.
            sig { returns(String) }
            attr_accessor :status

            # Total length of the trip, in meters.
            sig { returns(Float) }
            attr_accessor :total_distance_along_trip

            # Time offset from the closest stop to the current position of the transit vehicle
            # (in seconds).
            sig { returns(T.nilable(Integer)) }
            attr_reader :closest_stop_time_offset

            sig { params(closest_stop_time_offset: Integer).void }
            attr_writer :closest_stop_time_offset

            # Information about frequency-based scheduling, if applicable to the trip.
            sig { returns(T.nilable(String)) }
            attr_reader :frequency

            sig { params(frequency: String).void }
            attr_writer :frequency

            # Last known location of the transit vehicle.
            sig do
              returns(
                T.nilable(
                  OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::LastKnownLocation
                )
              )
            end
            attr_reader :last_known_location

            sig do
              params(
                last_known_location:
                  OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::LastKnownLocation::OrHash
              ).void
            end
            attr_writer :last_known_location

            # Last known orientation value received in real-time from the transit vehicle.
            sig { returns(T.nilable(Float)) }
            attr_reader :last_known_orientation

            sig { params(last_known_orientation: Float).void }
            attr_writer :last_known_orientation

            # ID of the next stop the transit vehicle is scheduled to arrive at.
            sig { returns(T.nilable(String)) }
            attr_reader :next_stop

            sig { params(next_stop: String).void }
            attr_writer :next_stop

            # Time offset from the next stop to the current position of the transit vehicle
            # (in seconds).
            sig { returns(T.nilable(Integer)) }
            attr_reader :next_stop_time_offset

            sig { params(next_stop_time_offset: Integer).void }
            attr_writer :next_stop_time_offset

            # Orientation of the transit vehicle, represented as an angle in degrees.
            sig { returns(T.nilable(Float)) }
            attr_reader :orientation

            sig { params(orientation: Float).void }
            attr_writer :orientation

            # Current position of the transit vehicle.
            sig do
              returns(
                T.nilable(
                  OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::Position
                )
              )
            end
            attr_reader :position

            sig do
              params(
                position:
                  OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::Position::OrHash
              ).void
            end
            attr_writer :position

            # Distance, in meters, the transit vehicle is scheduled to have progressed along
            # the active trip.
            sig { returns(T.nilable(Float)) }
            attr_reader :scheduled_distance_along_trip

            sig { params(scheduled_distance_along_trip: Float).void }
            attr_writer :scheduled_distance_along_trip

            # References to situation elements (if any) applicable to this trip.
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :situation_ids

            sig { params(situation_ids: T::Array[String]).void }
            attr_writer :situation_ids

            # ID of the transit vehicle currently serving the trip.
            sig { returns(T.nilable(String)) }
            attr_reader :vehicle_id

            sig { params(vehicle_id: String).void }
            attr_writer :vehicle_id

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
                last_known_location:
                  OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::LastKnownLocation::OrHash,
                last_known_orientation: Float,
                next_stop: String,
                next_stop_time_offset: Integer,
                orientation: Float,
                position:
                  OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::Position::OrHash,
                scheduled_distance_along_trip: Float,
                situation_ids: T::Array[String],
                vehicle_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Trip ID of the trip the vehicle is actively serving.
              active_trip_id:,
              # Index of the active trip into the sequence of trips for the active block.
              block_trip_sequence:,
              # ID of the closest stop to the current location of the transit vehicle.
              closest_stop:,
              # Distance, in meters, the transit vehicle has progressed along the active trip.
              distance_along_trip:,
              # Last known distance along the trip received in real-time from the transit
              # vehicle.
              last_known_distance_along_trip:,
              # Timestamp of the last known real-time location update from the transit vehicle.
              last_location_update_time:,
              # Timestamp of the last known real-time update from the transit vehicle.
              last_update_time:,
              # Capacity of the transit vehicle in terms of occupancy.
              occupancy_capacity:,
              # Current count of occupants in the transit vehicle.
              occupancy_count:,
              # Current occupancy status of the transit vehicle.
              occupancy_status:,
              # Current journey phase of the trip.
              phase:,
              # Indicates if real-time arrival info is available for this trip.
              predicted:,
              # Deviation from the schedule in seconds (positive for late, negative for early).
              schedule_deviation:,
              # Time, in milliseconds since the Unix epoch, of midnight for the start of the
              # service date for the trip.
              service_date:,
              # Current status modifiers for the trip.
              status:,
              # Total length of the trip, in meters.
              total_distance_along_trip:,
              # Time offset from the closest stop to the current position of the transit vehicle
              # (in seconds).
              closest_stop_time_offset: nil,
              # Information about frequency-based scheduling, if applicable to the trip.
              frequency: nil,
              # Last known location of the transit vehicle.
              last_known_location: nil,
              # Last known orientation value received in real-time from the transit vehicle.
              last_known_orientation: nil,
              # ID of the next stop the transit vehicle is scheduled to arrive at.
              next_stop: nil,
              # Time offset from the next stop to the current position of the transit vehicle
              # (in seconds).
              next_stop_time_offset: nil,
              # Orientation of the transit vehicle, represented as an angle in degrees.
              orientation: nil,
              # Current position of the transit vehicle.
              position: nil,
              # Distance, in meters, the transit vehicle is scheduled to have progressed along
              # the active trip.
              scheduled_distance_along_trip: nil,
              # References to situation elements (if any) applicable to this trip.
              situation_ids: nil,
              # ID of the transit vehicle currently serving the trip.
              vehicle_id: nil
            )
            end

            sig do
              override.returns(
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
                  last_known_location:
                    OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::LastKnownLocation,
                  last_known_orientation: Float,
                  next_stop: String,
                  next_stop_time_offset: Integer,
                  orientation: Float,
                  position:
                    OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::Position,
                  scheduled_distance_along_trip: Float,
                  situation_ids: T::Array[String],
                  vehicle_id: String
                }
              )
            end
            def to_hash
            end

            class LastKnownLocation < OnebusawaySDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(T.self_type, OnebusawaySDK::Internal::AnyHash)
                end

              # Latitude of the last known location of the transit vehicle.
              sig { returns(T.nilable(Float)) }
              attr_reader :lat

              sig { params(lat: Float).void }
              attr_writer :lat

              # Longitude of the last known location of the transit vehicle.
              sig { returns(T.nilable(Float)) }
              attr_reader :lon

              sig { params(lon: Float).void }
              attr_writer :lon

              # Last known location of the transit vehicle.
              sig { params(lat: Float, lon: Float).returns(T.attached_class) }
              def self.new(
                # Latitude of the last known location of the transit vehicle.
                lat: nil,
                # Longitude of the last known location of the transit vehicle.
                lon: nil
              )
              end

              sig { override.returns({ lat: Float, lon: Float }) }
              def to_hash
              end
            end

            class Position < OnebusawaySDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(T.self_type, OnebusawaySDK::Internal::AnyHash)
                end

              # Latitude of the current position of the transit vehicle.
              sig { returns(T.nilable(Float)) }
              attr_reader :lat

              sig { params(lat: Float).void }
              attr_writer :lat

              # Longitude of the current position of the transit vehicle.
              sig { returns(T.nilable(Float)) }
              attr_reader :lon

              sig { params(lon: Float).void }
              attr_writer :lon

              # Current position of the transit vehicle.
              sig { params(lat: Float, lon: Float).returns(T.attached_class) }
              def self.new(
                # Latitude of the current position of the transit vehicle.
                lat: nil,
                # Longitude of the current position of the transit vehicle.
                lon: nil
              )
              end

              sig { override.returns({ lat: Float, lon: Float }) }
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
