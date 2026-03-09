# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ScheduleForRoute#retrieve
    class ScheduleForRouteRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry }

        # @!method initialize(entry:)
        #   @param entry [OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry]

        # @see OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::Internal::Type::BaseModel
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
          required :service_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :serviceIds

          # @!attribute stop_trip_groupings
          #
          #   @return [Array<OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping>]
          required :stop_trip_groupings,
                   -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping] },
                   api_name: :stopTripGroupings

          # @!method initialize(route_id:, schedule_date:, service_ids:, stop_trip_groupings:)
          #   @param route_id [String]
          #   @param schedule_date [Integer]
          #   @param service_ids [Array<String>]
          #   @param stop_trip_groupings [Array<OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping>]

          class StopTripGrouping < OnebusawaySDK::Internal::Type::BaseModel
            # @!attribute direction_id
            #
            #   @return [String]
            required :direction_id, String, api_name: :directionId

            # @!attribute stop_ids
            #
            #   @return [Array<String>]
            required :stop_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :stopIds

            # @!attribute trip_headsigns
            #
            #   @return [Array<String>]
            required :trip_headsigns, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :tripHeadsigns

            # @!attribute trip_ids
            #
            #   @return [Array<String>]
            required :trip_ids, OnebusawaySDK::Internal::Type::ArrayOf[String], api_name: :tripIds

            # @!attribute trips_with_stop_times
            #
            #   @return [Array<OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime>, nil]
            optional :trips_with_stop_times,
                     -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime] },
                     api_name: :tripsWithStopTimes

            # @!method initialize(direction_id:, stop_ids:, trip_headsigns:, trip_ids:, trips_with_stop_times: nil)
            #   @param direction_id [String]
            #   @param stop_ids [Array<String>]
            #   @param trip_headsigns [Array<String>]
            #   @param trip_ids [Array<String>]
            #   @param trips_with_stop_times [Array<OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime>]

            class TripsWithStopTime < OnebusawaySDK::Internal::Type::BaseModel
              # @!attribute stop_times
              #
              #   @return [Array<OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime>]
              required :stop_times,
                       -> do
                         OnebusawaySDK::Internal::Type::ArrayOf[
                           OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime
                         ]
                       end,
                       api_name: :stopTimes

              # @!attribute trip_id
              #
              #   @return [String]
              required :trip_id, String, api_name: :tripId

              # @!method initialize(stop_times:, trip_id:)
              #   @param stop_times [Array<OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime>]
              #   @param trip_id [String]

              class StopTime < OnebusawaySDK::Internal::Type::BaseModel
                # @!attribute arrival_enabled
                #
                #   @return [Boolean]
                required :arrival_enabled, OnebusawaySDK::Internal::Type::Boolean, api_name: :arrivalEnabled

                # @!attribute arrival_time
                #
                #   @return [Integer]
                required :arrival_time, Integer, api_name: :arrivalTime

                # @!attribute departure_enabled
                #
                #   @return [Boolean]
                required :departure_enabled,
                         OnebusawaySDK::Internal::Type::Boolean,
                         api_name: :departureEnabled

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
        end
      end
    end
  end
end
