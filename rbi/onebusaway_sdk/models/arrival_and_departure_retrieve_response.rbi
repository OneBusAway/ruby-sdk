# typed: strong

module OnebusawaySDK
  module Models
    class ArrivalAndDepartureRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      OrHash =
        T.type_alias { T.any(T.self_type, OnebusawaySDK::Internal::AnyHash) }

      sig do
        returns(
          OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data
          }
        )
      end
      def to_hash
      end

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, OnebusawaySDK::Internal::AnyHash) }

        sig do
          returns(
            OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry
          )
        end
        attr_reader :entry

        sig do
          params(
            entry:
              OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::OrHash
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
              OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::OrHash,
            references: OnebusawaySDK::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry:
                OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry,
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

          # Indicates if riders can arrive on this transit vehicle.
          sig { returns(T::Boolean) }
          attr_accessor :arrival_enabled

          # Index of this arrival’s trip into the sequence of trips for the active block.
          sig { returns(Integer) }
          attr_accessor :block_trip_sequence

          # Indicates if riders can depart from this transit vehicle.
          sig { returns(T::Boolean) }
          attr_accessor :departure_enabled

          # Number of stops between the arriving transit vehicle and the current stop
          # (excluding the current stop).
          sig { returns(Integer) }
          attr_accessor :number_of_stops_away

          # Predicted arrival time, in milliseconds since Unix epoch (zero if no real-time
          # available).
          sig { returns(Integer) }
          attr_accessor :predicted_arrival_time

          # Predicted departure time, in milliseconds since Unix epoch (zero if no real-time
          # available).
          sig { returns(Integer) }
          attr_accessor :predicted_departure_time

          # The ID of the route for the arriving vehicle.
          sig { returns(String) }
          attr_accessor :route_id

          # Scheduled arrival time, in milliseconds since Unix epoch.
          sig { returns(Integer) }
          attr_accessor :scheduled_arrival_time

          # Scheduled departure time, in milliseconds since Unix epoch.
          sig { returns(Integer) }
          attr_accessor :scheduled_departure_time

          # Time, in milliseconds since the Unix epoch, of midnight for the start of the
          # service date for the trip.
          sig { returns(Integer) }
          attr_accessor :service_date

          # The ID of the stop the vehicle is arriving at.
          sig { returns(String) }
          attr_accessor :stop_id

          # Index of the stop into the sequence of stops that make up the trip for this
          # arrival.
          sig { returns(Integer) }
          attr_accessor :stop_sequence

          # Total number of stops visited on the trip for this arrival.
          sig { returns(Integer) }
          attr_accessor :total_stops_in_trip

          # Optional trip headsign that potentially overrides the trip headsign in the
          # referenced trip element.
          sig { returns(String) }
          attr_accessor :trip_headsign

          # The ID of the trip for the arriving vehicle.
          sig { returns(String) }
          attr_accessor :trip_id

          # ID of the transit vehicle serving this trip.
          sig { returns(String) }
          attr_accessor :vehicle_id

          # The actual track information of the arriving transit vehicle.
          sig { returns(T.nilable(String)) }
          attr_reader :actual_track

          sig { params(actual_track: String).void }
          attr_writer :actual_track

          # Distance of the arriving transit vehicle from the stop, in meters.
          sig { returns(T.nilable(Float)) }
          attr_reader :distance_from_stop

          sig { params(distance_from_stop: Float).void }
          attr_writer :distance_from_stop

          # Information about frequency-based scheduling, if applicable to the trip.
          sig { returns(T.nilable(String)) }
          attr_reader :frequency

          sig { params(frequency: String).void }
          attr_writer :frequency

          # Historical occupancy information of the transit vehicle.
          sig { returns(T.nilable(String)) }
          attr_reader :historical_occupancy

          sig { params(historical_occupancy: String).void }
          attr_writer :historical_occupancy

          # Timestamp of the last update time for this arrival.
          sig { returns(T.nilable(Integer)) }
          attr_reader :last_update_time

          sig { params(last_update_time: Integer).void }
          attr_writer :last_update_time

          # Current occupancy status of the transit vehicle.
          sig { returns(T.nilable(String)) }
          attr_reader :occupancy_status

          sig { params(occupancy_status: String).void }
          attr_writer :occupancy_status

          # Indicates if real-time arrival info is available for this trip.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :predicted

          sig { params(predicted: T::Boolean).void }
          attr_writer :predicted

          # Interval for predicted arrival time, if available.
          sig { returns(T.nilable(String)) }
          attr_reader :predicted_arrival_interval

          sig { params(predicted_arrival_interval: String).void }
          attr_writer :predicted_arrival_interval

          # Interval for predicted departure time, if available.
          sig { returns(T.nilable(String)) }
          attr_reader :predicted_departure_interval

          sig { params(predicted_departure_interval: String).void }
          attr_writer :predicted_departure_interval

          # Predicted occupancy status of the transit vehicle.
          sig { returns(T.nilable(String)) }
          attr_reader :predicted_occupancy

          sig { params(predicted_occupancy: String).void }
          attr_writer :predicted_occupancy

          # Optional route long name that potentially overrides the route long name in the
          # referenced route element.
          sig { returns(T.nilable(String)) }
          attr_reader :route_long_name

          sig { params(route_long_name: String).void }
          attr_writer :route_long_name

          # Optional route short name that potentially overrides the route short name in the
          # referenced route element.
          sig { returns(T.nilable(String)) }
          attr_reader :route_short_name

          sig { params(route_short_name: String).void }
          attr_writer :route_short_name

          # Interval for scheduled arrival time.
          sig { returns(T.nilable(String)) }
          attr_reader :scheduled_arrival_interval

          sig { params(scheduled_arrival_interval: String).void }
          attr_writer :scheduled_arrival_interval

          # Interval for scheduled departure time.
          sig { returns(T.nilable(String)) }
          attr_reader :scheduled_departure_interval

          sig { params(scheduled_departure_interval: String).void }
          attr_writer :scheduled_departure_interval

          # Scheduled track information of the arriving transit vehicle.
          sig { returns(T.nilable(String)) }
          attr_reader :scheduled_track

          sig { params(scheduled_track: String).void }
          attr_writer :scheduled_track

          # References to situation elements (if any) applicable to this arrival.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :situation_ids

          sig { params(situation_ids: T::Array[String]).void }
          attr_writer :situation_ids

          # Current status of the arrival.
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # Trip-specific status for the arriving transit vehicle.
          sig do
            returns(
              T.nilable(
                OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus
              )
            )
          end
          attr_reader :trip_status

          sig do
            params(
              trip_status:
                OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::OrHash
            ).void
          end
          attr_writer :trip_status

          sig do
            params(
              arrival_enabled: T::Boolean,
              block_trip_sequence: Integer,
              departure_enabled: T::Boolean,
              number_of_stops_away: Integer,
              predicted_arrival_time: Integer,
              predicted_departure_time: Integer,
              route_id: String,
              scheduled_arrival_time: Integer,
              scheduled_departure_time: Integer,
              service_date: Integer,
              stop_id: String,
              stop_sequence: Integer,
              total_stops_in_trip: Integer,
              trip_headsign: String,
              trip_id: String,
              vehicle_id: String,
              actual_track: String,
              distance_from_stop: Float,
              frequency: String,
              historical_occupancy: String,
              last_update_time: Integer,
              occupancy_status: String,
              predicted: T::Boolean,
              predicted_arrival_interval: String,
              predicted_departure_interval: String,
              predicted_occupancy: String,
              route_long_name: String,
              route_short_name: String,
              scheduled_arrival_interval: String,
              scheduled_departure_interval: String,
              scheduled_track: String,
              situation_ids: T::Array[String],
              status: String,
              trip_status:
                OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Indicates if riders can arrive on this transit vehicle.
            arrival_enabled:,
            # Index of this arrival’s trip into the sequence of trips for the active block.
            block_trip_sequence:,
            # Indicates if riders can depart from this transit vehicle.
            departure_enabled:,
            # Number of stops between the arriving transit vehicle and the current stop
            # (excluding the current stop).
            number_of_stops_away:,
            # Predicted arrival time, in milliseconds since Unix epoch (zero if no real-time
            # available).
            predicted_arrival_time:,
            # Predicted departure time, in milliseconds since Unix epoch (zero if no real-time
            # available).
            predicted_departure_time:,
            # The ID of the route for the arriving vehicle.
            route_id:,
            # Scheduled arrival time, in milliseconds since Unix epoch.
            scheduled_arrival_time:,
            # Scheduled departure time, in milliseconds since Unix epoch.
            scheduled_departure_time:,
            # Time, in milliseconds since the Unix epoch, of midnight for the start of the
            # service date for the trip.
            service_date:,
            # The ID of the stop the vehicle is arriving at.
            stop_id:,
            # Index of the stop into the sequence of stops that make up the trip for this
            # arrival.
            stop_sequence:,
            # Total number of stops visited on the trip for this arrival.
            total_stops_in_trip:,
            # Optional trip headsign that potentially overrides the trip headsign in the
            # referenced trip element.
            trip_headsign:,
            # The ID of the trip for the arriving vehicle.
            trip_id:,
            # ID of the transit vehicle serving this trip.
            vehicle_id:,
            # The actual track information of the arriving transit vehicle.
            actual_track: nil,
            # Distance of the arriving transit vehicle from the stop, in meters.
            distance_from_stop: nil,
            # Information about frequency-based scheduling, if applicable to the trip.
            frequency: nil,
            # Historical occupancy information of the transit vehicle.
            historical_occupancy: nil,
            # Timestamp of the last update time for this arrival.
            last_update_time: nil,
            # Current occupancy status of the transit vehicle.
            occupancy_status: nil,
            # Indicates if real-time arrival info is available for this trip.
            predicted: nil,
            # Interval for predicted arrival time, if available.
            predicted_arrival_interval: nil,
            # Interval for predicted departure time, if available.
            predicted_departure_interval: nil,
            # Predicted occupancy status of the transit vehicle.
            predicted_occupancy: nil,
            # Optional route long name that potentially overrides the route long name in the
            # referenced route element.
            route_long_name: nil,
            # Optional route short name that potentially overrides the route short name in the
            # referenced route element.
            route_short_name: nil,
            # Interval for scheduled arrival time.
            scheduled_arrival_interval: nil,
            # Interval for scheduled departure time.
            scheduled_departure_interval: nil,
            # Scheduled track information of the arriving transit vehicle.
            scheduled_track: nil,
            # References to situation elements (if any) applicable to this arrival.
            situation_ids: nil,
            # Current status of the arrival.
            status: nil,
            # Trip-specific status for the arriving transit vehicle.
            trip_status: nil
          )
          end

          sig do
            override.returns(
              {
                arrival_enabled: T::Boolean,
                block_trip_sequence: Integer,
                departure_enabled: T::Boolean,
                number_of_stops_away: Integer,
                predicted_arrival_time: Integer,
                predicted_departure_time: Integer,
                route_id: String,
                scheduled_arrival_time: Integer,
                scheduled_departure_time: Integer,
                service_date: Integer,
                stop_id: String,
                stop_sequence: Integer,
                total_stops_in_trip: Integer,
                trip_headsign: String,
                trip_id: String,
                vehicle_id: String,
                actual_track: String,
                distance_from_stop: Float,
                frequency: String,
                historical_occupancy: String,
                last_update_time: Integer,
                occupancy_status: String,
                predicted: T::Boolean,
                predicted_arrival_interval: String,
                predicted_departure_interval: String,
                predicted_occupancy: String,
                route_long_name: String,
                route_short_name: String,
                scheduled_arrival_interval: String,
                scheduled_departure_interval: String,
                scheduled_track: String,
                situation_ids: T::Array[String],
                status: String,
                trip_status:
                  OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus
              }
            )
          end
          def to_hash
          end

          class TripStatus < OnebusawaySDK::Internal::Type::BaseModel
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
                  OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::LastKnownLocation
                )
              )
            end
            attr_reader :last_known_location

            sig do
              params(
                last_known_location:
                  OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::LastKnownLocation::OrHash
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
                  OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::Position
                )
              )
            end
            attr_reader :position

            sig do
              params(
                position:
                  OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::Position::OrHash
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

            # Trip-specific status for the arriving transit vehicle.
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
                  OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::LastKnownLocation::OrHash,
                last_known_orientation: Float,
                next_stop: String,
                next_stop_time_offset: Integer,
                orientation: Float,
                position:
                  OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::Position::OrHash,
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
                    OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::LastKnownLocation,
                  last_known_orientation: Float,
                  next_stop: String,
                  next_stop_time_offset: Integer,
                  orientation: Float,
                  position:
                    OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::Position,
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
