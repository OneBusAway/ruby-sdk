# typed: strong

module OnebusawaySDK
  module Models
    class VehiclesForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      OrHash =
        T.type_alias { T.any(T.self_type, OnebusawaySDK::Internal::AnyHash) }

      sig do
        returns(OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data)
      end
      attr_reader :data

      sig do
        params(
          data:
            OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data }
        )
      end
      def to_hash
      end

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(T.self_type, OnebusawaySDK::Internal::AnyHash) }

        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig do
          returns(
            T::Array[
              OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List
            ]
          )
        end
        attr_accessor :list

        sig { returns(OnebusawaySDK::References) }
        attr_reader :references

        sig { params(references: OnebusawaySDK::References::OrHash).void }
        attr_writer :references

        sig do
          params(
            limit_exceeded: T::Boolean,
            list:
              T::Array[
                OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::OrHash
              ],
            references: OnebusawaySDK::References::OrHash
          ).returns(T.attached_class)
        end
        def self.new(limit_exceeded:, list:, references:)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list:
                T::Array[
                  OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List
                ],
              references: OnebusawaySDK::References
            }
          )
        end
        def to_hash
        end

        class List < OnebusawaySDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(T.self_type, OnebusawaySDK::Internal::AnyHash)
            end

          sig { returns(Integer) }
          attr_accessor :last_location_update_time

          sig { returns(Integer) }
          attr_accessor :last_update_time

          sig do
            returns(
              OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location
            )
          end
          attr_reader :location

          sig do
            params(
              location:
                OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location::OrHash
            ).void
          end
          attr_writer :location

          sig { returns(String) }
          attr_accessor :trip_id

          sig do
            returns(
              OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus
            )
          end
          attr_reader :trip_status

          sig do
            params(
              trip_status:
                OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::OrHash
            ).void
          end
          attr_writer :trip_status

          sig { returns(String) }
          attr_accessor :vehicle_id

          sig { returns(T.nilable(Integer)) }
          attr_reader :occupancy_capacity

          sig { params(occupancy_capacity: Integer).void }
          attr_writer :occupancy_capacity

          sig { returns(T.nilable(Integer)) }
          attr_reader :occupancy_count

          sig { params(occupancy_count: Integer).void }
          attr_writer :occupancy_count

          sig { returns(T.nilable(String)) }
          attr_reader :occupancy_status

          sig { params(occupancy_status: String).void }
          attr_writer :occupancy_status

          sig { returns(T.nilable(String)) }
          attr_reader :phase

          sig { params(phase: String).void }
          attr_writer :phase

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              last_location_update_time: Integer,
              last_update_time: Integer,
              location:
                OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location::OrHash,
              trip_id: String,
              trip_status:
                OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::OrHash,
              vehicle_id: String,
              occupancy_capacity: Integer,
              occupancy_count: Integer,
              occupancy_status: String,
              phase: String,
              status: String
            ).returns(T.attached_class)
          end
          def self.new(
            last_location_update_time:,
            last_update_time:,
            location:,
            trip_id:,
            trip_status:,
            vehicle_id:,
            occupancy_capacity: nil,
            occupancy_count: nil,
            occupancy_status: nil,
            phase: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                last_location_update_time: Integer,
                last_update_time: Integer,
                location:
                  OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location,
                trip_id: String,
                trip_status:
                  OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus,
                vehicle_id: String,
                occupancy_capacity: Integer,
                occupancy_count: Integer,
                occupancy_status: String,
                phase: String,
                status: String
              }
            )
          end
          def to_hash
          end

          class Location < OnebusawaySDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(T.self_type, OnebusawaySDK::Internal::AnyHash)
              end

            sig { returns(T.nilable(Float)) }
            attr_reader :lat

            sig { params(lat: Float).void }
            attr_writer :lat

            sig { returns(T.nilable(Float)) }
            attr_reader :lon

            sig { params(lon: Float).void }
            attr_writer :lon

            sig { params(lat: Float, lon: Float).returns(T.attached_class) }
            def self.new(lat: nil, lon: nil)
            end

            sig { override.returns({ lat: Float, lon: Float }) }
            def to_hash
            end
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
                  OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation
                )
              )
            end
            attr_reader :last_known_location

            sig do
              params(
                last_known_location:
                  OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation::OrHash
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
                  OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position
                )
              )
            end
            attr_reader :position

            sig do
              params(
                position:
                  OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position::OrHash
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
                  OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation::OrHash,
                last_known_orientation: Float,
                next_stop: String,
                next_stop_time_offset: Integer,
                orientation: Float,
                position:
                  OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position::OrHash,
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
                    OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation,
                  last_known_orientation: Float,
                  next_stop: String,
                  next_stop_time_offset: Integer,
                  orientation: Float,
                  position:
                    OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position,
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
