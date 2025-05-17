# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::ScheduleForRoute#retrieve
    class ScheduleForRouteRetrieveResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data]
      required :data, -> { OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data]

      class Data < OpenTransit::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry }

        # @!method initialize(entry:)
        #   @param entry [OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry]

        # @see OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data#entry
        class Entry < OpenTransit::Internal::Type::BaseModel
          # @!attribute route_id
          #
          #   @return [String]
          required :route_id, String, api_name: :routeId

          # @!attribute schedule_date
          #
          #   @return [Integer]
          required :schedule_date, Integer, api_name: :scheduleDate

          # @!attribute service_ids
          #
          #   @return [Array<String>]
          required :service_ids, OpenTransit::Internal::Type::ArrayOf[String], api_name: :serviceIds

          # @!attribute stops
          #
          #   @return [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop>]
          required :stops,
                   -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop] }

          # @!attribute stop_trip_groupings
          #
          #   @return [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping>]
          required :stop_trip_groupings,
                   -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping] },
                   api_name: :stopTripGroupings

          # @!attribute trips
          #
          #   @return [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip>]
          required :trips,
                   -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip] }

          # @!method initialize(route_id:, schedule_date:, service_ids:, stops:, stop_trip_groupings:, trips:)
          #   @param route_id [String]
          #   @param schedule_date [Integer]
          #   @param service_ids [Array<String>]
          #   @param stops [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop>]
          #   @param stop_trip_groupings [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping>]
          #   @param trips [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip>]

          class Stop < OpenTransit::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute lat
            #
            #   @return [Float]
            required :lat, Float

            # @!attribute location_type
            #
            #   @return [Integer]
            required :location_type, Integer, api_name: :locationType

            # @!attribute lon
            #
            #   @return [Float]
            required :lon, Float

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute parent
            #
            #   @return [String]
            required :parent, String

            # @!attribute route_ids
            #
            #   @return [Array<String>]
            required :route_ids, OpenTransit::Internal::Type::ArrayOf[String], api_name: :routeIds

            # @!attribute static_route_ids
            #
            #   @return [Array<String>]
            required :static_route_ids,
                     OpenTransit::Internal::Type::ArrayOf[String],
                     api_name: :staticRouteIds

            # @!attribute code
            #
            #   @return [String, nil]
            optional :code, String

            # @!attribute direction
            #
            #   @return [String, nil]
            optional :direction, String

            # @!attribute wheelchair_boarding
            #
            #   @return [String, nil]
            optional :wheelchair_boarding, String, api_name: :wheelchairBoarding

            # @!method initialize(id:, lat:, location_type:, lon:, name:, parent:, route_ids:, static_route_ids:, code: nil, direction: nil, wheelchair_boarding: nil)
            #   @param id [String]
            #   @param lat [Float]
            #   @param location_type [Integer]
            #   @param lon [Float]
            #   @param name [String]
            #   @param parent [String]
            #   @param route_ids [Array<String>]
            #   @param static_route_ids [Array<String>]
            #   @param code [String]
            #   @param direction [String]
            #   @param wheelchair_boarding [String]
          end

          class StopTripGrouping < OpenTransit::Internal::Type::BaseModel
            # @!attribute direction_id
            #
            #   @return [String]
            required :direction_id, String, api_name: :directionId

            # @!attribute stop_ids
            #
            #   @return [Array<String>]
            required :stop_ids, OpenTransit::Internal::Type::ArrayOf[String], api_name: :stopIds

            # @!attribute trip_headsigns
            #
            #   @return [Array<String>]
            required :trip_headsigns, OpenTransit::Internal::Type::ArrayOf[String], api_name: :tripHeadsigns

            # @!attribute trip_ids
            #
            #   @return [Array<String>]
            required :trip_ids, OpenTransit::Internal::Type::ArrayOf[String], api_name: :tripIds

            # @!attribute trips_with_stop_times
            #
            #   @return [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime>, nil]
            optional :trips_with_stop_times,
                     -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime] },
                     api_name: :tripsWithStopTimes

            # @!method initialize(direction_id:, stop_ids:, trip_headsigns:, trip_ids:, trips_with_stop_times: nil)
            #   @param direction_id [String]
            #   @param stop_ids [Array<String>]
            #   @param trip_headsigns [Array<String>]
            #   @param trip_ids [Array<String>]
            #   @param trips_with_stop_times [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime>]

            class TripsWithStopTime < OpenTransit::Internal::Type::BaseModel
              # @!attribute stop_times
              #
              #   @return [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime>]
              required :stop_times,
                       -> do
                         OpenTransit::Internal::Type::ArrayOf[
                           OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime
                         ]
                       end,
                       api_name: :stopTimes

              # @!attribute trip_id
              #
              #   @return [String]
              required :trip_id, String, api_name: :tripId

              # @!method initialize(stop_times:, trip_id:)
              #   @param stop_times [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime>]
              #   @param trip_id [String]

              class StopTime < OpenTransit::Internal::Type::BaseModel
                # @!attribute arrival_enabled
                #
                #   @return [Boolean]
                required :arrival_enabled, OpenTransit::Internal::Type::Boolean, api_name: :arrivalEnabled

                # @!attribute arrival_time
                #
                #   @return [Integer]
                required :arrival_time, Integer, api_name: :arrivalTime

                # @!attribute departure_enabled
                #
                #   @return [Boolean]
                required :departure_enabled, OpenTransit::Internal::Type::Boolean, api_name: :departureEnabled

                # @!attribute departure_time
                #
                #   @return [Integer]
                required :departure_time, Integer, api_name: :departureTime

                # @!attribute stop_id
                #
                #   @return [String]
                required :stop_id, String, api_name: :stopId

                # @!attribute trip_id
                #
                #   @return [String]
                required :trip_id, String, api_name: :tripId

                # @!attribute service_id
                #
                #   @return [String, nil]
                optional :service_id, String, api_name: :serviceId

                # @!attribute stop_headsign
                #
                #   @return [String, nil]
                optional :stop_headsign, String, api_name: :stopHeadsign

                # @!method initialize(arrival_enabled:, arrival_time:, departure_enabled:, departure_time:, stop_id:, trip_id:, service_id: nil, stop_headsign: nil)
                #   @param arrival_enabled [Boolean]
                #   @param arrival_time [Integer]
                #   @param departure_enabled [Boolean]
                #   @param departure_time [Integer]
                #   @param stop_id [String]
                #   @param trip_id [String]
                #   @param service_id [String]
                #   @param stop_headsign [String]
              end
            end
          end

          class Trip < OpenTransit::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute route_id
            #
            #   @return [String]
            required :route_id, String, api_name: :routeId

            # @!attribute service_id
            #
            #   @return [String]
            required :service_id, String, api_name: :serviceId

            # @!attribute block_id
            #
            #   @return [String, nil]
            optional :block_id, String, api_name: :blockId

            # @!attribute direction_id
            #
            #   @return [String, nil]
            optional :direction_id, String, api_name: :directionId

            # @!attribute peak_offpeak
            #
            #   @return [Integer, nil]
            optional :peak_offpeak, Integer, api_name: :peakOffpeak

            # @!attribute route_short_name
            #
            #   @return [String, nil]
            optional :route_short_name, String, api_name: :routeShortName

            # @!attribute shape_id
            #
            #   @return [String, nil]
            optional :shape_id, String, api_name: :shapeId

            # @!attribute time_zone
            #
            #   @return [String, nil]
            optional :time_zone, String, api_name: :timeZone

            # @!attribute trip_headsign
            #
            #   @return [String, nil]
            optional :trip_headsign, String, api_name: :tripHeadsign

            # @!attribute trip_short_name
            #
            #   @return [String, nil]
            optional :trip_short_name, String, api_name: :tripShortName

            # @!method initialize(id:, route_id:, service_id:, block_id: nil, direction_id: nil, peak_offpeak: nil, route_short_name: nil, shape_id: nil, time_zone: nil, trip_headsign: nil, trip_short_name: nil)
            #   @param id [String]
            #   @param route_id [String]
            #   @param service_id [String]
            #   @param block_id [String]
            #   @param direction_id [String]
            #   @param peak_offpeak [Integer]
            #   @param route_short_name [String]
            #   @param shape_id [String]
            #   @param time_zone [String]
            #   @param trip_headsign [String]
            #   @param trip_short_name [String]
          end
        end
      end
    end
  end
end
