# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::VehiclesForAgency#list
    class VehiclesForAgencyListResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data]
      required :data, -> { OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OnebusawaySDK::Internal::Type::Boolean, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List>]
        required :list,
                 -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List] }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param limit_exceeded [Boolean]
        #   # @param list [Array<OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List>]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(limit_exceeded:, list:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

        class List < OnebusawaySDK::Internal::Type::BaseModel
          # @!attribute last_location_update_time
          #
          #   @return [Integer]
          required :last_location_update_time, Integer, api_name: :lastLocationUpdateTime

          # @!attribute last_update_time
          #
          #   @return [Integer]
          required :last_update_time, Integer, api_name: :lastUpdateTime

          # @!attribute location
          #
          #   @return [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location]
          required :location, -> { OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location }

          # @!attribute trip_id
          #
          #   @return [String]
          required :trip_id, String, api_name: :tripId

          # @!attribute trip_status
          #
          #   @return [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus]
          required :trip_status,
                   -> { OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus },
                   api_name: :tripStatus

          # @!attribute vehicle_id
          #
          #   @return [String]
          required :vehicle_id, String, api_name: :vehicleId

          # @!attribute [r] occupancy_capacity
          #
          #   @return [Integer, nil]
          optional :occupancy_capacity, Integer, api_name: :occupancyCapacity

          # @!parse
          #   # @return [Integer]
          #   attr_writer :occupancy_capacity

          # @!attribute [r] occupancy_count
          #
          #   @return [Integer, nil]
          optional :occupancy_count, Integer, api_name: :occupancyCount

          # @!parse
          #   # @return [Integer]
          #   attr_writer :occupancy_count

          # @!attribute [r] occupancy_status
          #
          #   @return [String, nil]
          optional :occupancy_status, String, api_name: :occupancyStatus

          # @!parse
          #   # @return [String]
          #   attr_writer :occupancy_status

          # @!attribute [r] phase
          #
          #   @return [String, nil]
          optional :phase, String

          # @!parse
          #   # @return [String]
          #   attr_writer :phase

          # @!attribute [r] status
          #
          #   @return [String, nil]
          optional :status, String

          # @!parse
          #   # @return [String]
          #   attr_writer :status

          # @!parse
          #   # @param last_location_update_time [Integer]
          #   # @param last_update_time [Integer]
          #   # @param location [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::Location]
          #   # @param trip_id [String]
          #   # @param trip_status [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus]
          #   # @param vehicle_id [String]
          #   # @param occupancy_capacity [Integer]
          #   # @param occupancy_count [Integer]
          #   # @param occupancy_status [String]
          #   # @param phase [String]
          #   # @param status [String]
          #   #
          #   def initialize(
          #     last_location_update_time:,
          #     last_update_time:,
          #     location:,
          #     trip_id:,
          #     trip_status:,
          #     vehicle_id:,
          #     occupancy_capacity: nil,
          #     occupancy_count: nil,
          #     occupancy_status: nil,
          #     phase: nil,
          #     status: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

          # @see OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List#location
          class Location < OnebusawaySDK::Internal::Type::BaseModel
            # @!attribute [r] lat
            #
            #   @return [Float, nil]
            optional :lat, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :lat

            # @!attribute [r] lon
            #
            #   @return [Float, nil]
            optional :lon, Float

            # @!parse
            #   # @return [Float]
            #   attr_writer :lon

            # @!parse
            #   # @param lat [Float]
            #   # @param lon [Float]
            #   #
            #   def initialize(lat: nil, lon: nil, **) = super

            # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void
          end

          # @see OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List#trip_status
          class TripStatus < OnebusawaySDK::Internal::Type::BaseModel
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

            # @!attribute [r] closest_stop_time_offset
            #   Time offset from the closest stop to the current position of the transit vehicle
            #   (in seconds).
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
            #   @return [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation, nil]
            optional :last_known_location,
                     -> { OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation },
                     api_name: :lastKnownLocation

            # @!parse
            #   # @return [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation]
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
            #   (in seconds).
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
            #   @return [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position, nil]
            optional :position,
                     -> { OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position }

            # @!parse
            #   # @return [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position]
            #   attr_writer :position

            # @!attribute [r] scheduled_distance_along_trip
            #   Distance, in meters, the transit vehicle is scheduled to have progressed along
            #   the active trip.
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
            #   # @param last_known_location [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::LastKnownLocation]
            #   # @param last_known_orientation [Float]
            #   # @param next_stop [String]
            #   # @param next_stop_time_offset [Integer]
            #   # @param orientation [Float]
            #   # @param position [OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus::Position]
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

            # @see OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus#last_known_location
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

            # @see OnebusawaySDK::Models::VehiclesForAgencyListResponse::Data::List::TripStatus#position
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
