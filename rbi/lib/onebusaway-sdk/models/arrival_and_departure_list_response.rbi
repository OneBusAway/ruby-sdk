# typed: strong

module OnebusawaySDK
  module Models
    class ArrivalAndDepartureListResponse < OnebusawaySDK::Models::ResponseWrapper
      sig { returns(OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data) }
      def data
      end

      sig do
        params(
          _: T.any(OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data, OnebusawaySDK::Util::AnyHash)
        )
          .returns(T.any(OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data, OnebusawaySDK::Util::AnyHash))
      end
      def data=(_)
      end

      sig { params(data: OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data).returns(T.attached_class) }
      def self.new(data:)
      end

      sig { override.returns({data: OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data}) }
      def to_hash
      end

      class Data < OnebusawaySDK::BaseModel
        sig { returns(OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry) }
        def entry
        end

        sig do
          params(
            _: T.any(OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
          )
            .returns(
              T.any(OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry, OnebusawaySDK::Util::AnyHash)
            )
        end
        def entry=(_)
        end

        sig { returns(OnebusawaySDK::Models::References) }
        def references
        end

        sig do
          params(_: T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash))
            .returns(T.any(OnebusawaySDK::Models::References, OnebusawaySDK::Util::AnyHash))
        end
        def references=(_)
        end

        sig do
          params(
            entry: OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry,
            references: OnebusawaySDK::Models::References
          )
            .returns(T.attached_class)
        end
        def self.new(entry:, references:)
        end

        sig do
          override
            .returns(
              {
                entry: OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry,
                references: OnebusawaySDK::Models::References
              }
            )
        end
        def to_hash
        end

        class Entry < OnebusawaySDK::BaseModel
          sig do
            returns(
              T::Array[OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture]
            )
          end
          def arrivals_and_departures
          end

          sig do
            params(
              _: T::Array[OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture]
            )
              .returns(
                T::Array[OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture]
              )
          end
          def arrivals_and_departures=(_)
          end

          sig do
            params(
              arrivals_and_departures: T::Array[OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture]
            )
              .returns(T.attached_class)
          end
          def self.new(arrivals_and_departures:)
          end

          sig do
            override
              .returns(
                {
                  arrivals_and_departures: T::Array[OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture]
                }
              )
          end
          def to_hash
          end

          class ArrivalsAndDeparture < OnebusawaySDK::BaseModel
            # Indicates if riders can arrive on this transit vehicle.
            sig { returns(T::Boolean) }
            def arrival_enabled
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def arrival_enabled=(_)
            end

            # Index of this arrival’s trip into the sequence of trips for the active block.
            sig { returns(Integer) }
            def block_trip_sequence
            end

            sig { params(_: Integer).returns(Integer) }
            def block_trip_sequence=(_)
            end

            # Indicates if riders can depart from this transit vehicle.
            sig { returns(T::Boolean) }
            def departure_enabled
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def departure_enabled=(_)
            end

            # Number of stops between the arriving transit vehicle and the current stop
            #   (excluding the current stop).
            sig { returns(Integer) }
            def number_of_stops_away
            end

            sig { params(_: Integer).returns(Integer) }
            def number_of_stops_away=(_)
            end

            # Predicted arrival time, in milliseconds since Unix epoch (zero if no real-time
            #   available).
            sig { returns(Integer) }
            def predicted_arrival_time
            end

            sig { params(_: Integer).returns(Integer) }
            def predicted_arrival_time=(_)
            end

            # Predicted departure time, in milliseconds since Unix epoch (zero if no real-time
            #   available).
            sig { returns(Integer) }
            def predicted_departure_time
            end

            sig { params(_: Integer).returns(Integer) }
            def predicted_departure_time=(_)
            end

            # The ID of the route for the arriving vehicle.
            sig { returns(String) }
            def route_id
            end

            sig { params(_: String).returns(String) }
            def route_id=(_)
            end

            # Scheduled arrival time, in milliseconds since Unix epoch.
            sig { returns(Integer) }
            def scheduled_arrival_time
            end

            sig { params(_: Integer).returns(Integer) }
            def scheduled_arrival_time=(_)
            end

            # Scheduled departure time, in milliseconds since Unix epoch.
            sig { returns(Integer) }
            def scheduled_departure_time
            end

            sig { params(_: Integer).returns(Integer) }
            def scheduled_departure_time=(_)
            end

            # Time, in milliseconds since the Unix epoch, of midnight for the start of the
            #   service date for the trip.
            sig { returns(Integer) }
            def service_date
            end

            sig { params(_: Integer).returns(Integer) }
            def service_date=(_)
            end

            # The ID of the stop the vehicle is arriving at.
            sig { returns(String) }
            def stop_id
            end

            sig { params(_: String).returns(String) }
            def stop_id=(_)
            end

            # Index of the stop into the sequence of stops that make up the trip for this
            #   arrival.
            sig { returns(Integer) }
            def stop_sequence
            end

            sig { params(_: Integer).returns(Integer) }
            def stop_sequence=(_)
            end

            # Total number of stops visited on the trip for this arrival.
            sig { returns(Integer) }
            def total_stops_in_trip
            end

            sig { params(_: Integer).returns(Integer) }
            def total_stops_in_trip=(_)
            end

            # Optional trip headsign that potentially overrides the trip headsign in the
            #   referenced trip element.
            sig { returns(String) }
            def trip_headsign
            end

            sig { params(_: String).returns(String) }
            def trip_headsign=(_)
            end

            # The ID of the trip for the arriving vehicle.
            sig { returns(String) }
            def trip_id
            end

            sig { params(_: String).returns(String) }
            def trip_id=(_)
            end

            # ID of the transit vehicle serving this trip.
            sig { returns(String) }
            def vehicle_id
            end

            sig { params(_: String).returns(String) }
            def vehicle_id=(_)
            end

            # The actual track information of the arriving transit vehicle.
            sig { returns(T.nilable(String)) }
            def actual_track
            end

            sig { params(_: String).returns(String) }
            def actual_track=(_)
            end

            # Distance of the arriving transit vehicle from the stop, in meters.
            sig { returns(T.nilable(Float)) }
            def distance_from_stop
            end

            sig { params(_: Float).returns(Float) }
            def distance_from_stop=(_)
            end

            # Information about frequency-based scheduling, if applicable to the trip.
            sig { returns(T.nilable(String)) }
            def frequency
            end

            sig { params(_: String).returns(String) }
            def frequency=(_)
            end

            # Historical occupancy information of the transit vehicle.
            sig { returns(T.nilable(String)) }
            def historical_occupancy
            end

            sig { params(_: String).returns(String) }
            def historical_occupancy=(_)
            end

            # Timestamp of the last update time for this arrival.
            sig { returns(T.nilable(Integer)) }
            def last_update_time
            end

            sig { params(_: Integer).returns(Integer) }
            def last_update_time=(_)
            end

            # Current occupancy status of the transit vehicle.
            sig { returns(T.nilable(String)) }
            def occupancy_status
            end

            sig { params(_: String).returns(String) }
            def occupancy_status=(_)
            end

            # Indicates if real-time arrival info is available for this trip.
            sig { returns(T.nilable(T::Boolean)) }
            def predicted
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def predicted=(_)
            end

            # Interval for predicted arrival time, if available.
            sig { returns(T.nilable(String)) }
            def predicted_arrival_interval
            end

            sig { params(_: String).returns(String) }
            def predicted_arrival_interval=(_)
            end

            # Interval for predicted departure time, if available.
            sig { returns(T.nilable(String)) }
            def predicted_departure_interval
            end

            sig { params(_: String).returns(String) }
            def predicted_departure_interval=(_)
            end

            # Predicted occupancy status of the transit vehicle.
            sig { returns(T.nilable(String)) }
            def predicted_occupancy
            end

            sig { params(_: String).returns(String) }
            def predicted_occupancy=(_)
            end

            # Optional route long name that potentially overrides the route long name in the
            #   referenced route element.
            sig { returns(T.nilable(String)) }
            def route_long_name
            end

            sig { params(_: String).returns(String) }
            def route_long_name=(_)
            end

            # Optional route short name that potentially overrides the route short name in the
            #   referenced route element.
            sig { returns(T.nilable(String)) }
            def route_short_name
            end

            sig { params(_: String).returns(String) }
            def route_short_name=(_)
            end

            # Interval for scheduled arrival time.
            sig { returns(T.nilable(String)) }
            def scheduled_arrival_interval
            end

            sig { params(_: String).returns(String) }
            def scheduled_arrival_interval=(_)
            end

            # Interval for scheduled departure time.
            sig { returns(T.nilable(String)) }
            def scheduled_departure_interval
            end

            sig { params(_: String).returns(String) }
            def scheduled_departure_interval=(_)
            end

            # Scheduled track information of the arriving transit vehicle.
            sig { returns(T.nilable(String)) }
            def scheduled_track
            end

            sig { params(_: String).returns(String) }
            def scheduled_track=(_)
            end

            # References to situation elements (if any) applicable to this arrival.
            sig { returns(T.nilable(T::Array[String])) }
            def situation_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def situation_ids=(_)
            end

            # Current status of the arrival.
            sig { returns(T.nilable(String)) }
            def status
            end

            sig { params(_: String).returns(String) }
            def status=(_)
            end

            # Trip-specific status for the arriving transit vehicle.
            sig do
              returns(
                T.nilable(
                  OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus
                )
              )
            end
            def trip_status
            end

            sig do
              params(
                _: T.any(
                  OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus,
                  OnebusawaySDK::Util::AnyHash
                )
              )
                .returns(
                  T.any(
                    OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus,
                    OnebusawaySDK::Util::AnyHash
                  )
                )
            end
            def trip_status=(_)
            end

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
                trip_status: OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus
              )
                .returns(T.attached_class)
            end
            def self.new(
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
              override
                .returns(
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
                    trip_status: OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus
                  }
                )
            end
            def to_hash
            end

            class TripStatus < OnebusawaySDK::BaseModel
              # Trip ID of the trip the vehicle is actively serving.
              sig { returns(String) }
              def active_trip_id
              end

              sig { params(_: String).returns(String) }
              def active_trip_id=(_)
              end

              # Index of the active trip into the sequence of trips for the active block.
              sig { returns(Integer) }
              def block_trip_sequence
              end

              sig { params(_: Integer).returns(Integer) }
              def block_trip_sequence=(_)
              end

              # ID of the closest stop to the current location of the transit vehicle.
              sig { returns(String) }
              def closest_stop
              end

              sig { params(_: String).returns(String) }
              def closest_stop=(_)
              end

              # Distance, in meters, the transit vehicle has progressed along the active trip.
              sig { returns(Float) }
              def distance_along_trip
              end

              sig { params(_: Float).returns(Float) }
              def distance_along_trip=(_)
              end

              # Last known distance along the trip received in real-time from the transit
              #   vehicle.
              sig { returns(Float) }
              def last_known_distance_along_trip
              end

              sig { params(_: Float).returns(Float) }
              def last_known_distance_along_trip=(_)
              end

              # Timestamp of the last known real-time location update from the transit vehicle.
              sig { returns(Integer) }
              def last_location_update_time
              end

              sig { params(_: Integer).returns(Integer) }
              def last_location_update_time=(_)
              end

              # Timestamp of the last known real-time update from the transit vehicle.
              sig { returns(Integer) }
              def last_update_time
              end

              sig { params(_: Integer).returns(Integer) }
              def last_update_time=(_)
              end

              # Capacity of the transit vehicle in terms of occupancy.
              sig { returns(Integer) }
              def occupancy_capacity
              end

              sig { params(_: Integer).returns(Integer) }
              def occupancy_capacity=(_)
              end

              # Current count of occupants in the transit vehicle.
              sig { returns(Integer) }
              def occupancy_count
              end

              sig { params(_: Integer).returns(Integer) }
              def occupancy_count=(_)
              end

              # Current occupancy status of the transit vehicle.
              sig { returns(String) }
              def occupancy_status
              end

              sig { params(_: String).returns(String) }
              def occupancy_status=(_)
              end

              # Current journey phase of the trip.
              sig { returns(String) }
              def phase
              end

              sig { params(_: String).returns(String) }
              def phase=(_)
              end

              # Indicates if real-time arrival info is available for this trip.
              sig { returns(T::Boolean) }
              def predicted
              end

              sig { params(_: T::Boolean).returns(T::Boolean) }
              def predicted=(_)
              end

              # Deviation from the schedule in seconds (positive for late, negative for early).
              sig { returns(Integer) }
              def schedule_deviation
              end

              sig { params(_: Integer).returns(Integer) }
              def schedule_deviation=(_)
              end

              # Time, in milliseconds since the Unix epoch, of midnight for the start of the
              #   service date for the trip.
              sig { returns(Integer) }
              def service_date
              end

              sig { params(_: Integer).returns(Integer) }
              def service_date=(_)
              end

              # Current status modifiers for the trip.
              sig { returns(String) }
              def status
              end

              sig { params(_: String).returns(String) }
              def status=(_)
              end

              # Total length of the trip, in meters.
              sig { returns(Float) }
              def total_distance_along_trip
              end

              sig { params(_: Float).returns(Float) }
              def total_distance_along_trip=(_)
              end

              # Time offset from the closest stop to the current position of the transit vehicle
              #   (in seconds).
              sig { returns(T.nilable(Integer)) }
              def closest_stop_time_offset
              end

              sig { params(_: Integer).returns(Integer) }
              def closest_stop_time_offset=(_)
              end

              # Information about frequency-based scheduling, if applicable to the trip.
              sig { returns(T.nilable(String)) }
              def frequency
              end

              sig { params(_: String).returns(String) }
              def frequency=(_)
              end

              # Last known location of the transit vehicle.
              sig do
                returns(
                  T.nilable(
                    OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::LastKnownLocation
                  )
                )
              end
              def last_known_location
              end

              sig do
                params(
                  _: T.any(
                    OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::LastKnownLocation,
                    OnebusawaySDK::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::LastKnownLocation,
                      OnebusawaySDK::Util::AnyHash
                    )
                  )
              end
              def last_known_location=(_)
              end

              # Last known orientation value received in real-time from the transit vehicle.
              sig { returns(T.nilable(Float)) }
              def last_known_orientation
              end

              sig { params(_: Float).returns(Float) }
              def last_known_orientation=(_)
              end

              # ID of the next stop the transit vehicle is scheduled to arrive at.
              sig { returns(T.nilable(String)) }
              def next_stop
              end

              sig { params(_: String).returns(String) }
              def next_stop=(_)
              end

              # Time offset from the next stop to the current position of the transit vehicle
              #   (in seconds).
              sig { returns(T.nilable(Integer)) }
              def next_stop_time_offset
              end

              sig { params(_: Integer).returns(Integer) }
              def next_stop_time_offset=(_)
              end

              # Orientation of the transit vehicle, represented as an angle in degrees.
              sig { returns(T.nilable(Float)) }
              def orientation
              end

              sig { params(_: Float).returns(Float) }
              def orientation=(_)
              end

              # Current position of the transit vehicle.
              sig do
                returns(
                  T.nilable(
                    OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::Position
                  )
                )
              end
              def position
              end

              sig do
                params(
                  _: T.any(
                    OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::Position,
                    OnebusawaySDK::Util::AnyHash
                  )
                )
                  .returns(
                    T.any(
                      OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::Position,
                      OnebusawaySDK::Util::AnyHash
                    )
                  )
              end
              def position=(_)
              end

              # Distance, in meters, the transit vehicle is scheduled to have progressed along
              #   the active trip.
              sig { returns(T.nilable(Float)) }
              def scheduled_distance_along_trip
              end

              sig { params(_: Float).returns(Float) }
              def scheduled_distance_along_trip=(_)
              end

              # References to situation elements (if any) applicable to this trip.
              sig { returns(T.nilable(T::Array[String])) }
              def situation_ids
              end

              sig { params(_: T::Array[String]).returns(T::Array[String]) }
              def situation_ids=(_)
              end

              # ID of the transit vehicle currently serving the trip.
              sig { returns(T.nilable(String)) }
              def vehicle_id
              end

              sig { params(_: String).returns(String) }
              def vehicle_id=(_)
              end

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
                  last_known_location: OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::LastKnownLocation,
                  last_known_orientation: Float,
                  next_stop: String,
                  next_stop_time_offset: Integer,
                  orientation: Float,
                  position: OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::Position,
                  scheduled_distance_along_trip: Float,
                  situation_ids: T::Array[String],
                  vehicle_id: String
                )
                  .returns(T.attached_class)
              end
              def self.new(
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
                override
                  .returns(
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
                      last_known_location: OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::LastKnownLocation,
                      last_known_orientation: Float,
                      next_stop: String,
                      next_stop_time_offset: Integer,
                      orientation: Float,
                      position: OnebusawaySDK::Models::ArrivalAndDepartureListResponse::Data::Entry::ArrivalsAndDeparture::TripStatus::Position,
                      scheduled_distance_along_trip: Float,
                      situation_ids: T::Array[String],
                      vehicle_id: String
                    }
                  )
              end
              def to_hash
              end

              class LastKnownLocation < OnebusawaySDK::BaseModel
                # Latitude of the last known location of the transit vehicle.
                sig { returns(T.nilable(Float)) }
                def lat
                end

                sig { params(_: Float).returns(Float) }
                def lat=(_)
                end

                # Longitude of the last known location of the transit vehicle.
                sig { returns(T.nilable(Float)) }
                def lon
                end

                sig { params(_: Float).returns(Float) }
                def lon=(_)
                end

                # Last known location of the transit vehicle.
                sig { params(lat: Float, lon: Float).returns(T.attached_class) }
                def self.new(lat: nil, lon: nil)
                end

                sig { override.returns({lat: Float, lon: Float}) }
                def to_hash
                end
              end

              class Position < OnebusawaySDK::BaseModel
                # Latitude of the current position of the transit vehicle.
                sig { returns(T.nilable(Float)) }
                def lat
                end

                sig { params(_: Float).returns(Float) }
                def lat=(_)
                end

                # Longitude of the current position of the transit vehicle.
                sig { returns(T.nilable(Float)) }
                def lon
                end

                sig { params(_: Float).returns(Float) }
                def lon=(_)
                end

                # Current position of the transit vehicle.
                sig { params(lat: Float, lon: Float).returns(T.attached_class) }
                def self.new(lat: nil, lon: nil)
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
end
