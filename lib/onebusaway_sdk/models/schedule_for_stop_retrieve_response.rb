# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ScheduleForStop#retrieve
    class ScheduleForStopRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::References]
        required :references, -> { OnebusawaySDK::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry]
        #   @param references [OnebusawaySDK::References]

        # @see OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::Internal::Type::BaseModel
          # @!attribute date
          #
          #   @return [Integer]
          required :date, Integer

          # @!attribute stop_id
          #
          #   @return [String]
          required :stop_id, String, api_name: :stopId

          # @!attribute stop_route_schedules
          #
          #   @return [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule>]
          required :stop_route_schedules,
                   -> { OnebusawaySDK::Internal::Type::ArrayOf[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule] },
                   api_name: :stopRouteSchedules

          # @!method initialize(date:, stop_id:, stop_route_schedules:)
          #   @param date [Integer]
          #   @param stop_id [String]
          #   @param stop_route_schedules [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule>]

          class StopRouteSchedule < OnebusawaySDK::Internal::Type::BaseModel
            # @!attribute route_id
            #
            #   @return [String]
            required :route_id, String, api_name: :routeId

            # @!attribute stop_route_direction_schedules
            #
            #   @return [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule>]
            required :stop_route_direction_schedules,
                     -> do
                       OnebusawaySDK::Internal::Type::ArrayOf[
                         OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule
                       ]
                     end,
                     api_name: :stopRouteDirectionSchedules

            # @!method initialize(route_id:, stop_route_direction_schedules:)
            #   @param route_id [String]
            #   @param stop_route_direction_schedules [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule>]

            class StopRouteDirectionSchedule < OnebusawaySDK::Internal::Type::BaseModel
              # @!attribute schedule_stop_times
              #
              #   @return [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime>]
              required :schedule_stop_times,
                       -> do
                         OnebusawaySDK::Internal::Type::ArrayOf[
                           OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime
                         ]
                       end,
                       api_name: :scheduleStopTimes

              # @!attribute trip_headsign
              #
              #   @return [String]
              required :trip_headsign, String, api_name: :tripHeadsign

              # @!attribute schedule_frequencies
              #
              #   @return [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency>, nil]
              optional :schedule_frequencies,
                       -> do
                         OnebusawaySDK::Internal::Type::ArrayOf[
                           OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency
                         ]
                       end,
                       api_name: :scheduleFrequencies

              # @!method initialize(schedule_stop_times:, trip_headsign:, schedule_frequencies: nil)
              #   @param schedule_stop_times [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime>]
              #   @param trip_headsign [String]
              #   @param schedule_frequencies [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency>]

              class ScheduleStopTime < OnebusawaySDK::Internal::Type::BaseModel
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

                # @!attribute service_id
                #
                #   @return [String]
                required :service_id, String, api_name: :serviceId

                # @!attribute trip_id
                #
                #   @return [String]
                required :trip_id, String, api_name: :tripId

                # @!attribute stop_headsign
                #
                #   @return [String, nil]
                optional :stop_headsign, String, api_name: :stopHeadsign

                # @!method initialize(arrival_enabled:, arrival_time:, departure_enabled:, departure_time:, service_id:, trip_id:, stop_headsign: nil)
                #   @param arrival_enabled [Boolean]
                #   @param arrival_time [Integer]
                #   @param departure_enabled [Boolean]
                #   @param departure_time [Integer]
                #   @param service_id [String]
                #   @param trip_id [String]
                #   @param stop_headsign [String]
              end

              class ScheduleFrequency < OnebusawaySDK::Internal::Type::BaseModel
                # @!attribute end_time
                #
                #   @return [Integer]
                required :end_time, Integer, api_name: :endTime

                # @!attribute headway
                #
                #   @return [Integer]
                required :headway, Integer

                # @!attribute service_date
                #
                #   @return [Integer]
                required :service_date, Integer, api_name: :serviceDate

                # @!attribute service_id
                #
                #   @return [String]
                required :service_id, String, api_name: :serviceId

                # @!attribute start_time
                #
                #   @return [Integer]
                required :start_time, Integer, api_name: :startTime

                # @!attribute trip_id
                #
                #   @return [String]
                required :trip_id, String, api_name: :tripId

                # @!method initialize(end_time:, headway:, service_date:, service_id:, start_time:, trip_id:)
                #   @param end_time [Integer]
                #   @param headway [Integer]
                #   @param service_date [Integer]
                #   @param service_id [String]
                #   @param start_time [Integer]
                #   @param trip_id [String]
              end
            end
          end
        end
      end
    end
  end
end
