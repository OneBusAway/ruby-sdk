# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::TripsForLocation#list
    class TripsForLocationListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::TripsForLocationListResponse::Data]
      required :data, -> { OnebusawaySDK::Models::TripsForLocationListResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::TripsForLocationListResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute limit_exceeded
        #   Indicates if the limit of trips has been exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OnebusawaySDK::Internal::Type::Boolean, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<OnebusawaySDK::Models::TripsForLocationListResponse::Data::List>]
        required :list,
                 -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List] }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::References }

        # @!attribute out_of_range
        #   Indicates if the search location is out of range
        #
        #   @return [Boolean, nil]
        optional :out_of_range, OnebusawaySDK::Internal::Type::Boolean, api_name: :outOfRange

        # @!method initialize(limit_exceeded:, list:, references:, out_of_range: nil)
        #   @param limit_exceeded [Boolean] Indicates if the limit of trips has been exceeded
        #
        #   @param list [Array<OnebusawaySDK::Models::TripsForLocationListResponse::Data::List>]
        #
        #   @param references [OnebusawaySDK::Models::References]
        #
        #   @param out_of_range [Boolean] Indicates if the search location is out of range

        class List < OnebusawaySDK::Internal::Type::BaseModel
          # @!attribute schedule
          #
          #   @return [OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule]
          required :schedule, -> { OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule }

          # @!attribute status
          #
          #   @return [OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status]
          required :status, -> { OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status }

          # @!attribute trip_id
          #
          #   @return [String]
          required :trip_id, String, api_name: :tripId

          # @!attribute frequency
          #
          #   @return [String, nil]
          optional :frequency, String, nil?: true

          # @!attribute service_date
          #
          #   @return [Integer, nil]
          optional :service_date, Integer, api_name: :serviceDate

          # @!attribute situation_ids
          #
          #   @return [Array<String>, nil]
          optional :situation_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :situationIds

          # @!method initialize(schedule:, status:, trip_id:, frequency: nil, service_date: nil, situation_ids: nil)
          #   @param schedule [OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule]
          #   @param status [OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status]
          #   @param trip_id [String]
          #   @param frequency [String, nil]
          #   @param service_date [Integer]
          #   @param situation_ids [Array<String>]

          # @see OnebusawaySDK::Models::TripsForLocationListResponse::Data::List#schedule
          class Schedule < OnebusawaySDK::Internal::Type::BaseModel
            # @!attribute next_trip_id
            #
            #   @return [String]
            required :next_trip_id, String, api_name: :nextTripId

            # @!attribute previous_trip_id
            #
            #   @return [String]
            required :previous_trip_id, String, api_name: :previousTripId

            # @!attribute stop_times
            #
            #   @return [Array<OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule::StopTime>]
            required :stop_times,
                     -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule::StopTime] },
                     api_name: :stopTimes

            # @!attribute time_zone
            #
            #   @return [String]
            required :time_zone, String, api_name: :timeZone

            # @!attribute frequency
            #
            #   @return [String, nil]
            optional :frequency, String, nil?: true

            # @!method initialize(next_trip_id:, previous_trip_id:, stop_times:, time_zone:, frequency: nil)
            #   @param next_trip_id [String]
            #   @param previous_trip_id [String]
            #   @param stop_times [Array<OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Schedule::StopTime>]
            #   @param time_zone [String]
            #   @param frequency [String, nil]

            class StopTime < OnebusawaySDK::Internal::Type::BaseModel
              # @!attribute arrival_time
              #
              #   @return [Integer, nil]
              optional :arrival_time, Integer, api_name: :arrivalTime

              # @!attribute departure_time
              #
              #   @return [Integer, nil]
              optional :departure_time, Integer, api_name: :departureTime

              # @!attribute distance_along_trip
              #
              #   @return [Float, nil]
              optional :distance_along_trip, Float, api_name: :distanceAlongTrip

              # @!attribute historical_occupancy
              #
              #   @return [String, nil]
              optional :historical_occupancy, String, api_name: :historicalOccupancy

              # @!attribute stop_headsign
              #
              #   @return [String, nil]
              optional :stop_headsign, String, api_name: :stopHeadsign

              # @!attribute stop_id
              #
              #   @return [String, nil]
              optional :stop_id, String, api_name: :stopId

              # @!method initialize(arrival_time: nil, departure_time: nil, distance_along_trip: nil, historical_occupancy: nil, stop_headsign: nil, stop_id: nil)
              #   @param arrival_time [Integer]
              #   @param departure_time [Integer]
              #   @param distance_along_trip [Float]
              #   @param historical_occupancy [String]
              #   @param stop_headsign [String]
              #   @param stop_id [String]
            end
          end

          # @see OnebusawaySDK::Models::TripsForLocationListResponse::Data::List#status
          class Status < OnebusawaySDK::Internal::Type::BaseModel
            # @!attribute active_trip_id
            #   Trip ID of the trip the vehicle is actively serving.
            #
            #   @return [String]
            required :active_trip_id, String, api_name: :activeTripId

            # @!attribute block_trip_sequence
            #   Index of the active trip into the sequence of trips for the active block.
            #
            #   @return [Integer]
            required :block_trip_sequence, Integer, api_name: :blockTripSequence

            # @!attribute closest_stop
            #   ID of the closest stop to the current location of the transit vehicle.
            #
            #   @return [String]
            required :closest_stop, String, api_name: :closestStop

            # @!attribute distance_along_trip
            #   Distance, in meters, the transit vehicle has progressed along the active trip.
            #
            #   @return [Float]
            required :distance_along_trip, Float, api_name: :distanceAlongTrip

            # @!attribute last_known_distance_along_trip
            #   Last known distance along the trip received in real-time from the transit
            #   vehicle.
            #
            #   @return [Float]
            required :last_known_distance_along_trip, Float, api_name: :lastKnownDistanceAlongTrip

            # @!attribute last_location_update_time
            #   Timestamp of the last known real-time location update from the transit vehicle.
            #
            #   @return [Integer]
            required :last_location_update_time, Integer, api_name: :lastLocationUpdateTime

            # @!attribute last_update_time
            #   Timestamp of the last known real-time update from the transit vehicle.
            #
            #   @return [Integer]
            required :last_update_time, Integer, api_name: :lastUpdateTime

            # @!attribute occupancy_capacity
            #   Capacity of the transit vehicle in terms of occupancy.
            #
            #   @return [Integer]
            required :occupancy_capacity, Integer, api_name: :occupancyCapacity

            # @!attribute occupancy_count
            #   Current count of occupants in the transit vehicle.
            #
            #   @return [Integer]
            required :occupancy_count, Integer, api_name: :occupancyCount

            # @!attribute occupancy_status
            #   Current occupancy status of the transit vehicle.
            #
            #   @return [String]
            required :occupancy_status, String, api_name: :occupancyStatus

            # @!attribute phase
            #   Current journey phase of the trip.
            #
            #   @return [String]
            required :phase, String

            # @!attribute predicted
            #   Indicates if real-time arrival info is available for this trip.
            #
            #   @return [Boolean]
            required :predicted, OnebusawaySDK::Internal::Type::Boolean

            # @!attribute schedule_deviation
            #   Deviation from the schedule in seconds (positive for late, negative for early).
            #
            #   @return [Integer]
            required :schedule_deviation, Integer, api_name: :scheduleDeviation

            # @!attribute service_date
            #   Time, in milliseconds since the Unix epoch, of midnight for the start of the
            #   service date for the trip.
            #
            #   @return [Integer]
            required :service_date, Integer, api_name: :serviceDate

            # @!attribute status
            #   Current status modifiers for the trip.
            #
            #   @return [String]
            required :status, String

            # @!attribute total_distance_along_trip
            #   Total length of the trip, in meters.
            #
            #   @return [Float]
            required :total_distance_along_trip, Float, api_name: :totalDistanceAlongTrip

            # @!attribute closest_stop_time_offset
            #   Time offset from the closest stop to the current position of the transit vehicle
            #   (in seconds).
            #
            #   @return [Integer, nil]
            optional :closest_stop_time_offset, Integer, api_name: :closestStopTimeOffset

            # @!attribute frequency
            #   Information about frequency-based scheduling, if applicable to the trip.
            #
            #   @return [String, nil]
            optional :frequency, String

            # @!attribute last_known_location
            #   Last known location of the transit vehicle.
            #
            #   @return [OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation, nil]
            optional :last_known_location,
                     -> { OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation },
                     api_name: :lastKnownLocation

            # @!attribute last_known_orientation
            #   Last known orientation value received in real-time from the transit vehicle.
            #
            #   @return [Float, nil]
            optional :last_known_orientation, Float, api_name: :lastKnownOrientation

            # @!attribute next_stop
            #   ID of the next stop the transit vehicle is scheduled to arrive at.
            #
            #   @return [String, nil]
            optional :next_stop, String, api_name: :nextStop

            # @!attribute next_stop_time_offset
            #   Time offset from the next stop to the current position of the transit vehicle
            #   (in seconds).
            #
            #   @return [Integer, nil]
            optional :next_stop_time_offset, Integer, api_name: :nextStopTimeOffset

            # @!attribute orientation
            #   Orientation of the transit vehicle, represented as an angle in degrees.
            #
            #   @return [Float, nil]
            optional :orientation, Float

            # @!attribute position
            #   Current position of the transit vehicle.
            #
            #   @return [OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::Position, nil]
            optional :position,
                     -> { OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::Position }

            # @!attribute scheduled_distance_along_trip
            #   Distance, in meters, the transit vehicle is scheduled to have progressed along
            #   the active trip.
            #
            #   @return [Float, nil]
            optional :scheduled_distance_along_trip, Float, api_name: :scheduledDistanceAlongTrip

            # @!attribute situation_ids
            #   References to situation elements (if any) applicable to this trip.
            #
            #   @return [Array<String>, nil]
            optional :situation_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :situationIds

            # @!attribute vehicle_id
            #   ID of the transit vehicle currently serving the trip.
            #
            #   @return [String, nil]
            optional :vehicle_id, String, api_name: :vehicleId

            # @!method initialize(active_trip_id:, block_trip_sequence:, closest_stop:, distance_along_trip:, last_known_distance_along_trip:, last_location_update_time:, last_update_time:, occupancy_capacity:, occupancy_count:, occupancy_status:, phase:, predicted:, schedule_deviation:, service_date:, status:, total_distance_along_trip:, closest_stop_time_offset: nil, frequency: nil, last_known_location: nil, last_known_orientation: nil, next_stop: nil, next_stop_time_offset: nil, orientation: nil, position: nil, scheduled_distance_along_trip: nil, situation_ids: nil, vehicle_id: nil)
            #   Some parameter documentations has been truncated, see
            #   {OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status} for
            #   more details.
            #
            #   @param active_trip_id [String] Trip ID of the trip the vehicle is actively serving.
            #
            #   @param block_trip_sequence [Integer] Index of the active trip into the sequence of trips for the active block.
            #
            #   @param closest_stop [String] ID of the closest stop to the current location of the transit vehicle.
            #
            #   @param distance_along_trip [Float] Distance, in meters, the transit vehicle has progressed along the active trip.
            #
            #   @param last_known_distance_along_trip [Float] Last known distance along the trip received in real-time from the transit vehicl
            #
            #   @param last_location_update_time [Integer] Timestamp of the last known real-time location update from the transit vehicle.
            #
            #   @param last_update_time [Integer] Timestamp of the last known real-time update from the transit vehicle.
            #
            #   @param occupancy_capacity [Integer] Capacity of the transit vehicle in terms of occupancy.
            #
            #   @param occupancy_count [Integer] Current count of occupants in the transit vehicle.
            #
            #   @param occupancy_status [String] Current occupancy status of the transit vehicle.
            #
            #   @param phase [String] Current journey phase of the trip.
            #
            #   @param predicted [Boolean] Indicates if real-time arrival info is available for this trip.
            #
            #   @param schedule_deviation [Integer] Deviation from the schedule in seconds (positive for late, negative for early).
            #
            #   @param service_date [Integer] Time, in milliseconds since the Unix epoch, of midnight for the start of the ser
            #
            #   @param status [String] Current status modifiers for the trip.
            #
            #   @param total_distance_along_trip [Float] Total length of the trip, in meters.
            #
            #   @param closest_stop_time_offset [Integer] Time offset from the closest stop to the current position of the transit vehicle
            #
            #   @param frequency [String] Information about frequency-based scheduling, if applicable to the trip.
            #
            #   @param last_known_location [OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::LastKnownLocation] Last known location of the transit vehicle.
            #
            #   @param last_known_orientation [Float] Last known orientation value received in real-time from the transit vehicle.
            #
            #   @param next_stop [String] ID of the next stop the transit vehicle is scheduled to arrive at.
            #
            #   @param next_stop_time_offset [Integer] Time offset from the next stop to the current position of the transit vehicle (i
            #
            #   @param orientation [Float] Orientation of the transit vehicle, represented as an angle in degrees.
            #
            #   @param position [OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status::Position] Current position of the transit vehicle.
            #
            #   @param scheduled_distance_along_trip [Float] Distance, in meters, the transit vehicle is scheduled to have progressed along t
            #
            #   @param situation_ids [Array<String>] References to situation elements (if any) applicable to this trip.
            #
            #   @param vehicle_id [String] ID of the transit vehicle currently serving the trip.

            # @see OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status#last_known_location
            class LastKnownLocation < OnebusawaySDK::Internal::Type::BaseModel
              # @!attribute lat
              #   Latitude of the last known location of the transit vehicle.
              #
              #   @return [Float, nil]
              optional :lat, Float

              # @!attribute lon
              #   Longitude of the last known location of the transit vehicle.
              #
              #   @return [Float, nil]
              optional :lon, Float

              # @!method initialize(lat: nil, lon: nil)
              #   Last known location of the transit vehicle.
              #
              #   @param lat [Float] Latitude of the last known location of the transit vehicle.
              #
              #   @param lon [Float] Longitude of the last known location of the transit vehicle.
            end

            # @see OnebusawaySDK::Models::TripsForLocationListResponse::Data::List::Status#position
            class Position < OnebusawaySDK::Internal::Type::BaseModel
              # @!attribute lat
              #   Latitude of the current position of the transit vehicle.
              #
              #   @return [Float, nil]
              optional :lat, Float

              # @!attribute lon
              #   Longitude of the current position of the transit vehicle.
              #
              #   @return [Float, nil]
              optional :lon, Float

              # @!method initialize(lat: nil, lon: nil)
              #   Current position of the transit vehicle.
              #
              #   @param lat [Float] Latitude of the current position of the transit vehicle.
              #
              #   @param lon [Float] Longitude of the current position of the transit vehicle.
            end
          end
        end
      end
    end
  end
end
