# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ArrivalAndDeparture#list
    class ArrivalAndDepartureListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data]
      required :data, -> { OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

      class Data < OnebusawaySDK::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param entry [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

        # @see OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data#entry
        class Entry < OnebusawaySDK::BaseModel
          # @!attribute arrivals_and_departures
          #
          #   @return [Array<OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture>]
          required :arrivals_and_departures,
                   -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture] },
                   api_name: :arrivalsAndDepartures

          # @!parse
          #   # @param arrivals_and_departures [Array<OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture>]
          #   #
          #   def initialize(arrivals_and_departures:, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

          class ArrivalsAndDeparture < OnebusawaySDK::BaseModel
            # @!attribute arrival_enabled
            #   Indicates if riders can arrive on this transit vehicle.
            #
            #   @return [Boolean]
            required :arrival_enabled, OnebusawaySDK::BooleanModel, api_name: :arrivalEnabled

            # @!attribute block_trip_sequence
            #   Index of this arrival’s trip into the sequence of trips for the active block.
            #
            #   @return [Integer]
            required :block_trip_sequence, Integer, api_name: :blockTripSequence

            # @!attribute departure_enabled
            #   Indicates if riders can depart from this transit vehicle.
            #
            #   @return [Boolean]
            required :departure_enabled, OnebusawaySDK::BooleanModel, api_name: :departureEnabled

            # @!attribute number_of_stops_away
            #   Number of stops between the arriving transit vehicle and the current stop
            #     (excluding the current stop).
            #
            #   @return [Integer]
            required :number_of_stops_away, Integer, api_name: :numberOfStopsAway

            # @!attribute predicted_arrival_time
            #   Predicted arrival time, in milliseconds since Unix epoch (zero if no real-time
            #     available).
            #
            #   @return [Integer]
            required :predicted_arrival_time, Integer, api_name: :predictedArrivalTime

            # @!attribute predicted_departure_time
            #   Predicted departure time, in milliseconds since Unix epoch (zero if no real-time
            #     available).
            #
            #   @return [Integer]
            required :predicted_departure_time, Integer, api_name: :predictedDepartureTime

            # @!attribute route_id
            #   The ID of the route for the arriving vehicle.
            #
            #   @return [String]
            required :route_id, String, api_name: :routeId

            # @!attribute scheduled_arrival_time
            #   Scheduled arrival time, in milliseconds since Unix epoch.
            #
            #   @return [Integer]
            required :scheduled_arrival_time, Integer, api_name: :scheduledArrivalTime

            # @!attribute scheduled_departure_time
            #   Scheduled departure time, in milliseconds since Unix epoch.
            #
            #   @return [Integer]
            required :scheduled_departure_time, Integer, api_name: :scheduledDepartureTime

            # @!attribute service_date
            #   Time, in milliseconds since the Unix epoch, of midnight for the start of the
            #     service date for the trip.
            #
            #   @return [Integer]
            required :service_date, Integer, api_name: :serviceDate

            # @!attribute stop_id
            #   The ID of the stop the vehicle is arriving at.
            #
            #   @return [String]
            required :stop_id, String, api_name: :stopId

            # @!attribute stop_sequence
            #   Index of the stop into the sequence of stops that make up the trip for this
            #     arrival.
            #
            #   @return [Integer]
            required :stop_sequence, Integer, api_name: :stopSequence

            # @!attribute total_stops_in_trip
            #   Total number of stops visited on the trip for this arrival.
            #
            #   @return [Integer]
            required :total_stops_in_trip, Integer, api_name: :totalStopsInTrip

            # @!attribute trip_headsign
            #   Optional trip headsign that potentially overrides the trip headsign in the
            #     referenced trip element.
            #
            #   @return [String]
            required :trip_headsign, String, api_name: :tripHeadsign

            # @!attribute trip_id
            #   The ID of the trip for the arriving vehicle.
            #
            #   @return [String]
            required :trip_id, String, api_name: :tripId

            # @!attribute vehicle_id
            #   ID of the transit vehicle serving this trip.
            #
            #   @return [String]
            required :vehicle_id, String, api_name: :vehicleId

            # @!attribute [r] actual_track
            #   The actual track information of the arriving transit vehicle.
            #
            #   @return [String, nil]
            optional :actual_track, String, api_name: :actualTrack

            # @!parse
            #   # @return [String]
            #   attr_writer :actual_track

            # @!attribute [r] distance_from_stop
            #   Distance of the arriving transit vehicle from the stop, in meters.
            #
            #   @return [Float, nil]
            optional :distance_from_stop, Float, api_name: :distanceFromStop

            # @!parse
            #   # @return [Float]
            #   attr_writer :distance_from_stop

            # @!attribute [r] frequency
            #   Information about frequency-based scheduling, if applicable to the trip.
            #
            #   @return [String, nil]
            optional :frequency, String

            # @!parse
            #   # @return [String]
            #   attr_writer :frequency

            # @!attribute [r] historical_occupancy
            #   Historical occupancy information of the transit vehicle.
            #
            #   @return [String, nil]
            optional :historical_occupancy, String, api_name: :historicalOccupancy

            # @!parse
            #   # @return [String]
            #   attr_writer :historical_occupancy

            # @!attribute [r] last_update_time
            #   Timestamp of the last update time for this arrival.
            #
            #   @return [Integer, nil]
            optional :last_update_time, Integer, api_name: :lastUpdateTime

            # @!parse
            #   # @return [Integer]
            #   attr_writer :last_update_time

            # @!attribute [r] occupancy_status
            #   Current occupancy status of the transit vehicle.
            #
            #   @return [String, nil]
            optional :occupancy_status, String, api_name: :occupancyStatus

            # @!parse
            #   # @return [String]
            #   attr_writer :occupancy_status

            # @!attribute [r] predicted
            #   Indicates if real-time arrival info is available for this trip.
            #
            #   @return [Boolean, nil]
            optional :predicted, OnebusawaySDK::BooleanModel

            # @!parse
            #   # @return [Boolean]
            #   attr_writer :predicted

            # @!attribute [r] predicted_arrival_interval
            #   Interval for predicted arrival time, if available.
            #
            #   @return [String, nil]
            optional :predicted_arrival_interval, String, api_name: :predictedArrivalInterval

            # @!parse
            #   # @return [String]
            #   attr_writer :predicted_arrival_interval

            # @!attribute [r] predicted_departure_interval
            #   Interval for predicted departure time, if available.
            #
            #   @return [String, nil]
            optional :predicted_departure_interval, String, api_name: :predictedDepartureInterval

            # @!parse
            #   # @return [String]
            #   attr_writer :predicted_departure_interval

            # @!attribute [r] predicted_occupancy
            #   Predicted occupancy status of the transit vehicle.
            #
            #   @return [String, nil]
            optional :predicted_occupancy, String, api_name: :predictedOccupancy

            # @!parse
            #   # @return [String]
            #   attr_writer :predicted_occupancy

            # @!attribute [r] route_long_name
            #   Optional route long name that potentially overrides the route long name in the
            #     referenced route element.
            #
            #   @return [String, nil]
            optional :route_long_name, String, api_name: :routeLongName

            # @!parse
            #   # @return [String]
            #   attr_writer :route_long_name

            # @!attribute [r] route_short_name
            #   Optional route short name that potentially overrides the route short name in the
            #     referenced route element.
            #
            #   @return [String, nil]
            optional :route_short_name, String, api_name: :routeShortName

            # @!parse
            #   # @return [String]
            #   attr_writer :route_short_name

            # @!attribute [r] scheduled_arrival_interval
            #   Interval for scheduled arrival time.
            #
            #   @return [String, nil]
            optional :scheduled_arrival_interval, String, api_name: :scheduledArrivalInterval

            # @!parse
            #   # @return [String]
            #   attr_writer :scheduled_arrival_interval

            # @!attribute [r] scheduled_departure_interval
            #   Interval for scheduled departure time.
            #
            #   @return [String, nil]
            optional :scheduled_departure_interval, String, api_name: :scheduledDepartureInterval

            # @!parse
            #   # @return [String]
            #   attr_writer :scheduled_departure_interval

            # @!attribute [r] scheduled_track
            #   Scheduled track information of the arriving transit vehicle.
            #
            #   @return [String, nil]
            optional :scheduled_track, String, api_name: :scheduledTrack

            # @!parse
            #   # @return [String]
            #   attr_writer :scheduled_track

            # @!attribute [r] situation_ids
            #   References to situation elements (if any) applicable to this arrival.
            #
            #   @return [Array<String>, nil]
            optional :situation_ids, OnebusawaySDK::ArrayOf[String], api_name: :situationIds

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :situation_ids

            # @!attribute [r] status
            #   Current status of the arrival.
            #
            #   @return [String, nil]
            optional :status, String

            # @!parse
            #   # @return [String]
            #   attr_writer :status

            # @!attribute [r] trip_status
            #   Trip-specific status for the arriving transit vehicle.
            #
            #   @return [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus, nil]
            optional :trip_status,
                     -> { OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus },
                     api_name: :tripStatus

            # @!parse
            #   # @return [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus]
            #   attr_writer :trip_status

            # @!parse
            #   # @param arrival_enabled [Boolean]
            #   # @param block_trip_sequence [Integer]
            #   # @param departure_enabled [Boolean]
            #   # @param number_of_stops_away [Integer]
            #   # @param predicted_arrival_time [Integer]
            #   # @param predicted_departure_time [Integer]
            #   # @param route_id [String]
            #   # @param scheduled_arrival_time [Integer]
            #   # @param scheduled_departure_time [Integer]
            #   # @param service_date [Integer]
            #   # @param stop_id [String]
            #   # @param stop_sequence [Integer]
            #   # @param total_stops_in_trip [Integer]
            #   # @param trip_headsign [String]
            #   # @param trip_id [String]
            #   # @param vehicle_id [String]
            #   # @param actual_track [String]
            #   # @param distance_from_stop [Float]
            #   # @param frequency [String]
            #   # @param historical_occupancy [String]
            #   # @param last_update_time [Integer]
            #   # @param occupancy_status [String]
            #   # @param predicted [Boolean]
            #   # @param predicted_arrival_interval [String]
            #   # @param predicted_departure_interval [String]
            #   # @param predicted_occupancy [String]
            #   # @param route_long_name [String]
            #   # @param route_short_name [String]
            #   # @param scheduled_arrival_interval [String]
            #   # @param scheduled_departure_interval [String]
            #   # @param scheduled_track [String]
            #   # @param situation_ids [Array<String>]
            #   # @param status [String]
            #   # @param trip_status [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus]
            #   #
            #   def initialize(
            #     arrival_enabled:,
            #     block_trip_sequence:,
            #     departure_enabled:,
            #     number_of_stops_away:,
            #     predicted_arrival_time:,
            #     predicted_departure_time:,
            #     route_id:,
            #     scheduled_arrival_time:,
            #     scheduled_departure_time:,
            #     service_date:,
            #     stop_id:,
            #     stop_sequence:,
            #     total_stops_in_trip:,
            #     trip_headsign:,
            #     trip_id:,
            #     vehicle_id:,
            #     actual_track: nil,
            #     distance_from_stop: nil,
            #     frequency: nil,
            #     historical_occupancy: nil,
            #     last_update_time: nil,
            #     occupancy_status: nil,
            #     predicted: nil,
            #     predicted_arrival_interval: nil,
            #     predicted_departure_interval: nil,
            #     predicted_occupancy: nil,
            #     route_long_name: nil,
            #     route_short_name: nil,
            #     scheduled_arrival_interval: nil,
            #     scheduled_departure_interval: nil,
            #     scheduled_track: nil,
            #     situation_ids: nil,
            #     status: nil,
            #     trip_status: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

            # @see OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture#trip_status
            class TripStatus < OnebusawaySDK::BaseModel
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
              required :predicted, OnebusawaySDK::BooleanModel

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
              #   @return [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::LastKnownLocation, nil]
              optional :last_known_location,
                       -> { OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::LastKnownLocation },
                       api_name: :lastKnownLocation

              # @!parse
              #   # @return [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::LastKnownLocation]
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
              #   @return [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::Position, nil]
              optional :position,
                       -> { OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::Position }

              # @!parse
              #   # @return [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::Position]
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
              optional :situation_ids, OnebusawaySDK::ArrayOf[String], api_name: :situationIds

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
              #   # Trip-specific status for the arriving transit vehicle.
              #   #
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
              #   # @param last_known_location [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::LastKnownLocation]
              #   # @param last_known_orientation [Float]
              #   # @param next_stop [String]
              #   # @param next_stop_time_offset [Integer]
              #   # @param orientation [Float]
              #   # @param position [OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::Position]
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

              # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

              # @see OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus#last_known_location
              class LastKnownLocation < OnebusawaySDK::BaseModel
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

                # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
              end

              # @see OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus#position
              class Position < OnebusawaySDK::BaseModel
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

                # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
              end
            end
          end
        end
      end
    end
  end
end
