# typed: strong

module OnebusawaySDK
  module Models
    class ArrivalAndDepartureRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data) }
      attr_accessor :data

      sig { params(data: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data).void }
      def initialize(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry) }
        attr_accessor :entry

        sig { returns(OnebusawaySDK::Models::References) }
        attr_accessor :references

        sig do
          params(
            entry: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry,
            references: OnebusawaySDK::Models::References
          ).void
        end
        def initialize(entry:, references:)
        end

        sig do
          override.returns(
            {
              entry: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry,
              references: OnebusawaySDK::Models::References
            }
          )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
          sig { returns(T::Boolean) }
          attr_accessor :arrival_enabled

          sig { returns(Integer) }
          attr_accessor :block_trip_sequence

          sig { returns(T::Boolean) }
          attr_accessor :departure_enabled

          sig { returns(Integer) }
          attr_accessor :number_of_stops_away

          sig { returns(Integer) }
          attr_accessor :predicted_arrival_time

          sig { returns(Integer) }
          attr_accessor :predicted_departure_time

          sig { returns(String) }
          attr_accessor :route_id

          sig { returns(Integer) }
          attr_accessor :scheduled_arrival_time

          sig { returns(Integer) }
          attr_accessor :scheduled_departure_time

          sig { returns(Integer) }
          attr_accessor :service_date

          sig { returns(String) }
          attr_accessor :stop_id

          sig { returns(Integer) }
          attr_accessor :stop_sequence

          sig { returns(Integer) }
          attr_accessor :total_stops_in_trip

          sig { returns(String) }
          attr_accessor :trip_headsign

          sig { returns(String) }
          attr_accessor :trip_id

          sig { returns(String) }
          attr_accessor :vehicle_id

          sig { returns(T.nilable(String)) }
          attr_reader :actual_track

          sig { params(actual_track: String).void }
          attr_writer :actual_track

          sig { returns(T.nilable(Float)) }
          attr_reader :distance_from_stop

          sig { params(distance_from_stop: Float).void }
          attr_writer :distance_from_stop

          sig { returns(T.nilable(String)) }
          attr_reader :frequency

          sig { params(frequency: String).void }
          attr_writer :frequency

          sig { returns(T.nilable(String)) }
          attr_reader :historical_occupancy

          sig { params(historical_occupancy: String).void }
          attr_writer :historical_occupancy

          sig { returns(T.nilable(Integer)) }
          attr_reader :last_update_time

          sig { params(last_update_time: Integer).void }
          attr_writer :last_update_time

          sig { returns(T.nilable(String)) }
          attr_reader :occupancy_status

          sig { params(occupancy_status: String).void }
          attr_writer :occupancy_status

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :predicted

          sig { params(predicted: T::Boolean).void }
          attr_writer :predicted

          sig { returns(T.nilable(String)) }
          attr_reader :predicted_arrival_interval

          sig { params(predicted_arrival_interval: String).void }
          attr_writer :predicted_arrival_interval

          sig { returns(T.nilable(String)) }
          attr_reader :predicted_departure_interval

          sig { params(predicted_departure_interval: String).void }
          attr_writer :predicted_departure_interval

          sig { returns(T.nilable(String)) }
          attr_reader :predicted_occupancy

          sig { params(predicted_occupancy: String).void }
          attr_writer :predicted_occupancy

          sig { returns(T.nilable(String)) }
          attr_reader :route_long_name

          sig { params(route_long_name: String).void }
          attr_writer :route_long_name

          sig { returns(T.nilable(String)) }
          attr_reader :route_short_name

          sig { params(route_short_name: String).void }
          attr_writer :route_short_name

          sig { returns(T.nilable(String)) }
          attr_reader :scheduled_arrival_interval

          sig { params(scheduled_arrival_interval: String).void }
          attr_writer :scheduled_arrival_interval

          sig { returns(T.nilable(String)) }
          attr_reader :scheduled_departure_interval

          sig { params(scheduled_departure_interval: String).void }
          attr_writer :scheduled_departure_interval

          sig { returns(T.nilable(String)) }
          attr_reader :scheduled_track

          sig { params(scheduled_track: String).void }
          attr_writer :scheduled_track

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :situation_ids

          sig { params(situation_ids: T::Array[String]).void }
          attr_writer :situation_ids

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            returns(T.nilable(OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus))
          end
          attr_reader :trip_status

          sig do
            params(trip_status: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus).void
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
              trip_status: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus
            ).void
          end
          def initialize(
            arrival_enabled:,
            block_trip_sequence:,
            departure_enabled:,
            number_of_stops_away:,
            predicted_arrival_time:,
            predicted_departure_time:,
            route_id:,
            scheduled_arrival_time:,
            scheduled_departure_time:,
            service_date:,
            stop_id:,
            stop_sequence:,
            total_stops_in_trip:,
            trip_headsign:,
            trip_id:,
            vehicle_id:,
            actual_track: nil,
            distance_from_stop: nil,
            frequency: nil,
            historical_occupancy: nil,
            last_update_time: nil,
            occupancy_status: nil,
            predicted: nil,
            predicted_arrival_interval: nil,
            predicted_departure_interval: nil,
            predicted_occupancy: nil,
            route_long_name: nil,
            route_short_name: nil,
            scheduled_arrival_interval: nil,
            scheduled_departure_interval: nil,
            scheduled_track: nil,
            situation_ids: nil,
            status: nil,
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
                trip_status: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus
              }
            )
          end
          def to_hash
          end

          class TripStatus < OnebusawaySDK::BaseModel
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
              returns(T.nilable(OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::LastKnownLocation))
            end
            attr_reader :last_known_location

            sig do
              params(
                last_known_location: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::LastKnownLocation
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
              returns(T.nilable(OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::Position))
            end
            attr_reader :position

            sig do
              params(
                position: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::Position
              ).void
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
                last_known_location: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::LastKnownLocation,
                last_known_orientation: Float,
                next_stop: String,
                next_stop_time_offset: Integer,
                orientation: Float,
                position: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::Position,
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
                  last_known_location: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::LastKnownLocation,
                  last_known_orientation: Float,
                  next_stop: String,
                  next_stop_time_offset: Integer,
                  orientation: Float,
                  position: OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse::Data::Entry::TripStatus::Position,
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

            class Position < OnebusawaySDK::BaseModel
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
