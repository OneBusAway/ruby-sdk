# typed: strong

module Onebusaway
  module Models
    class TripsForLocationListResponse < Onebusaway::Models::ResponseWrapper
      sig { returns(Onebusaway::Models::TripsForLocationListResponse::Data) }
      attr_accessor :data

      sig { params(data: Onebusaway::Models::TripsForLocationListResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: Onebusaway::Models::TripsForLocationListResponse::Data}) }
      def to_hash
      end

      class Data < Onebusaway::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :limit_exceeded

        sig { returns(T::Array[Onebusaway::Models::TripsForLocationListResponse::Data::List]) }
        attr_accessor :list

        sig { returns(Onebusaway::Models::References) }
        attr_accessor :references

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :out_of_range

        sig { params(out_of_range: T::Boolean).void }
        attr_writer :out_of_range

        sig do
          params(
            limit_exceeded: T::Boolean,
            list: T::Array[Onebusaway::Models::TripsForLocationListResponse::Data::List],
            references: Onebusaway::Models::References,
            out_of_range: T::Boolean
          ).void
        end
        def initialize(limit_exceeded:, list:, references:, out_of_range: nil)
        end

        sig do
          override.returns(
            {
              limit_exceeded: T::Boolean,
              list: T::Array[Onebusaway::Models::TripsForLocationListResponse::Data::List],
              references: Onebusaway::Models::References,
              out_of_range: T::Boolean
            }
          )
        end
        def to_hash
        end

        class List < Onebusaway::BaseModel
          sig { returns(Onebusaway::Models::TripsForLocationListResponse::Data::List::Schedule) }
          attr_accessor :schedule

          sig { returns(Onebusaway::Models::TripsForLocationListResponse::Data::List::Status) }
          attr_accessor :status

          sig { returns(String) }
          attr_accessor :trip_id

          sig { returns(T.nilable(String)) }
          attr_accessor :frequency

          sig { returns(T.nilable(Integer)) }
          attr_reader :service_date

          sig { params(service_date: Integer).void }
          attr_writer :service_date

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :situation_ids

          sig { params(situation_ids: T::Array[String]).void }
          attr_writer :situation_ids

          sig do
            params(
              schedule: Onebusaway::Models::TripsForLocationListResponse::Data::List::Schedule,
              status: Onebusaway::Models::TripsForLocationListResponse::Data::List::Status,
              trip_id: String,
              frequency: T.nilable(String),
              service_date: Integer,
              situation_ids: T::Array[String]
            ).void
          end
          def initialize(schedule:, status:, trip_id:, frequency: nil, service_date: nil, situation_ids: nil)
          end

          sig do
            override.returns(
              {
                schedule: Onebusaway::Models::TripsForLocationListResponse::Data::List::Schedule,
                status: Onebusaway::Models::TripsForLocationListResponse::Data::List::Status,
                trip_id: String,
                frequency: T.nilable(String),
                service_date: Integer,
                situation_ids: T::Array[String]
              }
            )
          end
          def to_hash
          end

          class Schedule < Onebusaway::BaseModel
            sig { returns(String) }
            attr_accessor :next_trip_id

            sig { returns(String) }
            attr_accessor :previous_trip_id

            sig do
              returns(T::Array[Onebusaway::Models::TripsForLocationListResponse::Data::List::Schedule::StopTime])
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
                stop_times: T::Array[Onebusaway::Models::TripsForLocationListResponse::Data::List::Schedule::StopTime],
                time_zone: String,
                frequency: T.nilable(String)
              ).void
            end
            def initialize(next_trip_id:, previous_trip_id:, stop_times:, time_zone:, frequency: nil)
            end

            sig do
              override.returns(
                {
                  next_trip_id: String,
                  previous_trip_id: String,
                  stop_times: T::Array[Onebusaway::Models::TripsForLocationListResponse::Data::List::Schedule::StopTime],
                  time_zone: String,
                  frequency: T.nilable(String)
                }
              )
            end
            def to_hash
            end

            class StopTime < Onebusaway::BaseModel
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
                ).void
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

          class Status < Onebusaway::BaseModel
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
              returns(T.nilable(Onebusaway::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation))
            end
            attr_reader :last_known_location

            sig do
              params(
                last_known_location: Onebusaway::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation
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
              returns(T.nilable(Onebusaway::Models::TripsForLocationListResponse::Data::List::Status::Position))
            end
            attr_reader :position

            sig do
              params(position: Onebusaway::Models::TripsForLocationListResponse::Data::List::Status::Position).void
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
                last_known_location: Onebusaway::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation,
                last_known_orientation: Float,
                next_stop: String,
                next_stop_time_offset: Integer,
                orientation: Float,
                position: Onebusaway::Models::TripsForLocationListResponse::Data::List::Status::Position,
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
                  last_known_location: Onebusaway::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation,
                  last_known_orientation: Float,
                  next_stop: String,
                  next_stop_time_offset: Integer,
                  orientation: Float,
                  position: Onebusaway::Models::TripsForLocationListResponse::Data::List::Status::Position,
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
