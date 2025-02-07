# typed: strong

module Onebusaway
  module Models
    class VehiclesForAgencyListResponse < Onebusaway::Models::ResponseWrapper
      sig { returns(Onebusaway::Models::VehiclesForAgencyListResponse::Data) }
      attr_accessor :data

      sig { params(data: Onebusaway::Models::VehiclesForAgencyListResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Onebusaway::Models::VehiclesForAgencyListResponse::Data}) }
      def to_hash
      end

      class Data < Onebusaway::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[Onebusaway::Models::VehiclesForAgencyListResponse::Data::List]) }
        attr_accessor :list

        sig { returns(Onebusaway::Models::References) }
        attr_accessor :references

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[Onebusaway::Models::VehiclesForAgencyListResponse::Data::List],
            references: Onebusaway::Models::References
          ).void
        end
        def initialize(limit_exceeded:, list:, references:)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list: T::Array[Onebusaway::Models::VehiclesForAgencyListResponse::Data::List],
              references: Onebusaway::Models::References
            }
          )
        end
        def to_hash
        end

        class List < Onebusaway::BaseModel
          sig { returns(Integer) }
          attr_accessor :last_location_update_time

          sig { returns(Integer) }
          attr_accessor :last_update_time

          sig { returns(Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::Location) }
          attr_accessor :location

          sig { returns(String) }
          attr_accessor :trip_id

          sig { returns(Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::TripStatus) }
          attr_accessor :trip_status

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
              location: Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::Location,
              trip_id: String,
              trip_status: Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::TripStatus,
              vehicle_id: String,
              occupancy_capacity: Integer,
              occupancy_count: Integer,
              occupancy_status: String,
              phase: String,
              status: String
            ).void
          end
          def initialize(
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
                location: Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::Location,
                trip_id: String,
                trip_status: Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::TripStatus,
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

          class Location < Onebusaway::BaseModel
            sig { returns(T.nilable(Float)) }
            attr_reader :lat

            sig { params(lat: Float).void }
            attr_writer :lat

            sig { returns(T.nilable(Float)) }
            attr_reader :lon

            sig { params(lon: Float).void }
            attr_writer :lon

            sig { params(lat: Float, lon: Float).void }
            def initialize(lat: nil, lon: nil)
            end

            sig { override.returns({lat: Float, lon: Float}) }
            def to_hash
            end
          end

          class TripStatus < Onebusaway::BaseModel
            sig { returns(String) }
            attr_accessor :active_trip_id

            sig { returns(Integer) }
            attr_accessor :block_trip_sequence

            sig { returns(String) }
            attr_accessor :closest_stop

            sig { returns(Float) }
            attr_accessor :distance_along_trip

            sig { returns(Float) }
            attr_accessor :last_known_distance_along_trip

            sig { returns(Integer) }
            attr_accessor :last_location_update_time

            sig { returns(Integer) }
            attr_accessor :last_update_time

            sig { returns(Integer) }
            attr_accessor :occupancy_capacity

            sig { returns(Integer) }
            attr_accessor :occupancy_count

            sig { returns(String) }
            attr_accessor :occupancy_status

            sig { returns(String) }
            attr_accessor :phase

            sig { returns(T::Boolean) }
            attr_accessor :predicted

            sig { returns(Integer) }
            attr_accessor :schedule_deviation

            sig { returns(Integer) }
            attr_accessor :service_date

            sig { returns(String) }
            attr_accessor :status

            sig { returns(Float) }
            attr_accessor :total_distance_along_trip

            sig { returns(T.nilable(Integer)) }
            attr_reader :closest_stop_time_offset

            sig { params(closest_stop_time_offset: Integer).void }
            attr_writer :closest_stop_time_offset

            sig { returns(T.nilable(String)) }
            attr_reader :frequency

            sig { params(frequency: String).void }
            attr_writer :frequency

            sig do
              returns(T.nilable(Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation))
            end
            attr_reader :last_known_location

            sig do
              params(
                last_known_location: Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation
              ).void
            end
            attr_writer :last_known_location

            sig { returns(T.nilable(Float)) }
            attr_reader :last_known_orientation

            sig { params(last_known_orientation: Float).void }
            attr_writer :last_known_orientation

            sig { returns(T.nilable(String)) }
            attr_reader :next_stop

            sig { params(next_stop: String).void }
            attr_writer :next_stop

            sig { returns(T.nilable(Integer)) }
            attr_reader :next_stop_time_offset

            sig { params(next_stop_time_offset: Integer).void }
            attr_writer :next_stop_time_offset

            sig { returns(T.nilable(Float)) }
            attr_reader :orientation

            sig { params(orientation: Float).void }
            attr_writer :orientation

            sig do
              returns(T.nilable(Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position))
            end
            attr_reader :position

            sig do
              params(position: Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position).void
            end
            attr_writer :position

            sig { returns(T.nilable(Float)) }
            attr_reader :scheduled_distance_along_trip

            sig { params(scheduled_distance_along_trip: Float).void }
            attr_writer :scheduled_distance_along_trip

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :situation_ids

            sig { params(situation_ids: T::Array[String]).void }
            attr_writer :situation_ids

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
                last_known_location: Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation,
                last_known_orientation: Float,
                next_stop: String,
                next_stop_time_offset: Integer,
                orientation: Float,
                position: Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position,
                scheduled_distance_along_trip: Float,
                situation_ids: T::Array[String],
                vehicle_id: String
              ).void
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
                  last_known_location: Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation,
                  last_known_orientation: Float,
                  next_stop: String,
                  next_stop_time_offset: Integer,
                  orientation: Float,
                  position: Onebusaway::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position,
                  scheduled_distance_along_trip: Float,
                  situation_ids: T::Array[String],
                  vehicle_id: String
                }
              )
            end
            def to_hash
            end

            class LastKnownLocation < Onebusaway::BaseModel
              sig { returns(T.nilable(Float)) }
              attr_reader :lat

              sig { params(lat: Float).void }
              attr_writer :lat

              sig { returns(T.nilable(Float)) }
              attr_reader :lon

              sig { params(lon: Float).void }
              attr_writer :lon

              sig { params(lat: Float, lon: Float).void }
              def initialize(lat: nil, lon: nil)
              end

              sig { override.returns({lat: Float, lon: Float}) }
              def to_hash
              end
            end

            class Position < Onebusaway::BaseModel
              sig { returns(T.nilable(Float)) }
              attr_reader :lat

              sig { params(lat: Float).void }
              attr_writer :lat

              sig { returns(T.nilable(Float)) }
              attr_reader :lon

              sig { params(lon: Float).void }
              attr_writer :lon

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
