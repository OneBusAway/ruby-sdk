# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::TripForVehicle#retrieve
    class TripForVehicleRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param entry [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

        # @see OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::Internal::Type::BaseModel
          # @!attribute trip_id
          #
          #   @return [String]
          required :trip_id, String, api_name: :tripId

          # @!attribute frequency
          #
          #   @return [String, nil]
          optional :frequency, String, nil?: true

          # @!attribute [r] schedule
          #
          #   @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule, nil]
          optional :schedule, -> { OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule }

          # @!parse
          #   # @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule]
          #   attr_writer :schedule

          # @!attribute [r] service_date
          #
          #   @return [Integer, nil]
          optional :service_date, Integer, api_name: :serviceDate

          # @!parse
          #   # @return [Integer]
          #   attr_writer :service_date

          # @!attribute [r] situation_ids
          #
          #   @return [Array<String>, nil]
          optional :situation_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :situationIds

          # @!parse
          #   # @return [Array<String>]
          #   attr_writer :situation_ids

          # @!attribute [r] status
          #
          #   @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status, nil]
          optional :status, -> { OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status }

          # @!parse
          #   # @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status]
          #   attr_writer :status

          # @!parse
          #   # @param trip_id [String]
          #   # @param frequency [String, nil]
          #   # @param schedule [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule]
          #   # @param service_date [Integer]
          #   # @param situation_ids [Array<String>]
          #   # @param status [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status]
          #   #
          #   def initialize(trip_id:, frequency: nil, schedule: nil, service_date: nil, situation_ids: nil, status: nil, **) = super

          # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

          # @see OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry#schedule
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
            #   @return [Array<OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule::StopTime>]
            required :stop_times,
                     -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule::StopTime] },
                     api_name: :stopTimes

            # @!attribute time_zone
            #
            #   @return [String]
            required :time_zone, String, api_name: :timeZone

            # @!attribute frequency
            #
            #   @return [String, nil]
            optional :frequency, String, nil?: true

            # @!parse
            #   # @param next_trip_id [String]
            #   # @param previous_trip_id [String]
            #   # @param stop_times [Array<OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Schedule::StopTime>]
            #   # @param time_zone [String]
            #   # @param frequency [String, nil]
            #   #
            #   def initialize(next_trip_id:, previous_trip_id:, stop_times:, time_zone:, frequency: nil, **) = super

            # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

            class StopTime < OnebusawaySDK::Internal::Type::BaseModel
              # @!attribute [r] arrival_time
              #
              #   @return [Integer, nil]
              optional :arrival_time, Integer, api_name: :arrivalTime

              # @!parse
              #   # @return [Integer]
              #   attr_writer :arrival_time

              # @!attribute [r] departure_time
              #
              #   @return [Integer, nil]
              optional :departure_time, Integer, api_name: :departureTime

              # @!parse
              #   # @return [Integer]
              #   attr_writer :departure_time

              # @!attribute [r] distance_along_trip
              #
              #   @return [Float, nil]
              optional :distance_along_trip, Float, api_name: :distanceAlongTrip

              # @!parse
              #   # @return [Float]
              #   attr_writer :distance_along_trip

              # @!attribute [r] historical_occupancy
              #
              #   @return [String, nil]
              optional :historical_occupancy, String, api_name: :historicalOccupancy

              # @!parse
              #   # @return [String]
              #   attr_writer :historical_occupancy

              # @!attribute [r] stop_headsign
              #
              #   @return [String, nil]
              optional :stop_headsign, String, api_name: :stopHeadsign

              # @!parse
              #   # @return [String]
              #   attr_writer :stop_headsign

              # @!attribute [r] stop_id
              #
              #   @return [String, nil]
              optional :stop_id, String, api_name: :stopId

              # @!parse
              #   # @return [String]
              #   attr_writer :stop_id

              # @!parse
              #   # @param arrival_time [Integer]
              #   # @param departure_time [Integer]
              #   # @param distance_along_trip [Float]
              #   # @param historical_occupancy [String]
              #   # @param stop_headsign [String]
              #   # @param stop_id [String]
              #   #
              #   def initialize(
              #     arrival_time: nil,
              #     departure_time: nil,
              #     distance_along_trip: nil,
              #     historical_occupancy: nil,
              #     stop_headsign: nil,
              #     stop_id: nil,
              #     **
              #   )
              #     super
              #   end

              # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void
            end
          end

          # @see OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry#status
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
            #     vehicle.
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
            #     service date for the trip.
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

            # @!attribute [r] closest_stop_time_offset
            #   Time offset from the closest stop to the current position of the transit vehicle
            #     (in seconds).
            #
            #   @return [Integer, nil]
            optional :closest_stop_time_offset, Integer, api_name: :closestStopTimeOffset

            # @!parse
            #   # @return [Integer]
            #   attr_writer :closest_stop_time_offset

            # @!attribute [r] frequency
            #   Information about frequency-based scheduling, if applicable to the trip.
            #
            #   @return [String, nil]
            optional :frequency, String

            # @!parse
            #   # @return [String]
            #   attr_writer :frequency

            # @!attribute [r] last_known_location
            #   Last known location of the transit vehicle.
            #
            #   @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::LastKnownLocation, nil]
            optional :last_known_location,
                     -> { OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::LastKnownLocation },
                     api_name: :lastKnownLocation

            # @!parse
            #   # @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::LastKnownLocation]
            #   attr_writer :last_known_location

            # @!attribute [r] last_known_orientation
            #   Last known orientation value received in real-time from the transit vehicle.
            #
            #   @return [Float, nil]
            optional :last_known_orientation, Float, api_name: :lastKnownOrientation

            # @!parse
            #   # @return [Float]
            #   attr_writer :last_known_orientation

            # @!attribute [r] next_stop
            #   ID of the next stop the transit vehicle is scheduled to arrive at.
            #
            #   @return [String, nil]
            optional :next_stop, String, api_name: :nextStop

            # @!parse
            #   # @return [String]
            #   attr_writer :next_stop

            # @!attribute [r] next_stop_time_offset
            #   Time offset from the next stop to the current position of the transit vehicle
            #     (in seconds).
            #
            #   @return [Integer, nil]
            optional :next_stop_time_offset, Integer, api_name: :nextStopTimeOffset

            # @!parse
            #   # @return [Integer]
            #   attr_writer :next_stop_time_offset

            # @!attribute [r] orientation
            #   Orientation of the transit vehicle, represented as an angle in degrees.
            #
            #   @return [Float, nil]
            optional :orientation, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :orientation

            # @!attribute [r] position
            #   Current position of the transit vehicle.
            #
            #   @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::Position, nil]
            optional :position,
                     -> { OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::Position }

            # @!parse
            #   # @return [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::Position]
            #   attr_writer :position

            # @!attribute [r] scheduled_distance_along_trip
            #   Distance, in meters, the transit vehicle is scheduled to have progressed along
            #     the active trip.
            #
            #   @return [Float, nil]
            optional :scheduled_distance_along_trip, Float, api_name: :scheduledDistanceAlongTrip

            # @!parse
            #   # @return [Float]
            #   attr_writer :scheduled_distance_along_trip

            # @!attribute [r] situation_ids
            #   References to situation elements (if any) applicable to this trip.
            #
            #   @return [Array<String>, nil]
            optional :situation_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :situationIds

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :situation_ids

            # @!attribute [r] vehicle_id
            #   ID of the transit vehicle currently serving the trip.
            #
            #   @return [String, nil]
            optional :vehicle_id, String, api_name: :vehicleId

            # @!parse
            #   # @return [String]
            #   attr_writer :vehicle_id

            # @!parse
            #   # @param active_trip_id [String]
            #   # @param block_trip_sequence [Integer]
            #   # @param closest_stop [String]
            #   # @param distance_along_trip [Float]
            #   # @param last_known_distance_along_trip [Float]
            #   # @param last_location_update_time [Integer]
            #   # @param last_update_time [Integer]
            #   # @param occupancy_capacity [Integer]
            #   # @param occupancy_count [Integer]
            #   # @param occupancy_status [String]
            #   # @param phase [String]
            #   # @param predicted [Boolean]
            #   # @param schedule_deviation [Integer]
            #   # @param service_date [Integer]
            #   # @param status [String]
            #   # @param total_distance_along_trip [Float]
            #   # @param closest_stop_time_offset [Integer]
            #   # @param frequency [String]
            #   # @param last_known_location [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::LastKnownLocation]
            #   # @param last_known_orientation [Float]
            #   # @param next_stop [String]
            #   # @param next_stop_time_offset [Integer]
            #   # @param orientation [Float]
            #   # @param position [OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status::Position]
            #   # @param scheduled_distance_along_trip [Float]
            #   # @param situation_ids [Array<String>]
            #   # @param vehicle_id [String]
            #   #
            #   def initialize(
            #     active_trip_id:,
            #     block_trip_sequence:,
            #     closest_stop:,
            #     distance_along_trip:,
            #     last_known_distance_along_trip:,
            #     last_location_update_time:,
            #     last_update_time:,
            #     occupancy_capacity:,
            #     occupancy_count:,
            #     occupancy_status:,
            #     phase:,
            #     predicted:,
            #     schedule_deviation:,
            #     service_date:,
            #     status:,
            #     total_distance_along_trip:,
            #     closest_stop_time_offset: nil,
            #     frequency: nil,
            #     last_known_location: nil,
            #     last_known_orientation: nil,
            #     next_stop: nil,
            #     next_stop_time_offset: nil,
            #     orientation: nil,
            #     position: nil,
            #     scheduled_distance_along_trip: nil,
            #     situation_ids: nil,
            #     vehicle_id: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

            # @see OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status#last_known_location
            class LastKnownLocation < OnebusawaySDK::Internal::Type::BaseModel
              # @!attribute [r] lat
              #   Latitude of the last known location of the transit vehicle.
              #
              #   @return [Float, nil]
              optional :lat, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :lat

              # @!attribute [r] lon
              #   Longitude of the last known location of the transit vehicle.
              #
              #   @return [Float, nil]
              optional :lon, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :lon

              # @!parse
              #   # Last known location of the transit vehicle.
              #   #
              #   # @param lat [Float]
              #   # @param lon [Float]
              #   #
              #   def initialize(lat: nil, lon: nil, **) = super

              # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void
            end

            # @see OnebusawaySDK::Models::TripForVehicleRetrieveResponse::Data::Entry::Status#position
            class Position < OnebusawaySDK::Internal::Type::BaseModel
              # @!attribute [r] lat
              #   Latitude of the current position of the transit vehicle.
              #
              #   @return [Float, nil]
              optional :lat, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :lat

              # @!attribute [r] lon
              #   Longitude of the current position of the transit vehicle.
              #
              #   @return [Float, nil]
              optional :lon, Float

              # @!parse
              #   # @return [Float]
              #   attr_writer :lon

              # @!parse
              #   # Current position of the transit vehicle.
              #   #
              #   # @param lat [Float]
              #   # @param lon [Float]
              #   #
              #   def initialize(lat: nil, lon: nil, **) = super

              # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void
            end
          end
        end
      end
    end
  end
end
