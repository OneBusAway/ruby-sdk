# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::ScheduleForStop#retrieve
    class ScheduleForStopRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

      class Data < OnebusawaySDK::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param entry [OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

        # @see OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::BaseModel
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
                   -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule] },
                   api_name: :stopRouteSchedules

          # @!parse
          #   # @param date [Integer]
          #   # @param stop_id [String]
          #   # @param stop_route_schedules [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule>]
          #   #
          #   def initialize(date:, stop_id:, stop_route_schedules:, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

          class StopRouteSchedule < OnebusawaySDK::BaseModel
            # @!attribute route_id
            #
            #   @return [String]
            required :route_id, String, api_name: :routeId

            # @!attribute stop_route_direction_schedules
            #
            #   @return [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule>]
            required :stop_route_direction_schedules,
                     -> do
                       OnebusawaySDK::ArrayOf[
                       OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule
                       ]
                     end,
                     api_name: :stopRouteDirectionSchedules

            # @!parse
            #   # @param route_id [String]
            #   # @param stop_route_direction_schedules [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule>]
            #   #
            #   def initialize(route_id:, stop_route_direction_schedules:, **) = super

            # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

            class StopRouteDirectionSchedule < OnebusawaySDK::BaseModel
              # @!attribute schedule_stop_times
              #
              #   @return [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime>]
              required :schedule_stop_times,
                       -> do
                         OnebusawaySDK::ArrayOf[
                         OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime
                         ]
                       end,
                       api_name: :scheduleStopTimes

              # @!attribute trip_headsign
              #
              #   @return [String]
              required :trip_headsign, String, api_name: :tripHeadsign

              # @!attribute [r] schedule_frequencies
              #
              #   @return [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency>, nil]
              optional :schedule_frequencies,
                       -> do
                         OnebusawaySDK::ArrayOf[
                         OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency
                         ]
                       end,
                       api_name: :scheduleFrequencies

              # @!parse
              #   # @return [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency>]
              #   attr_writer :schedule_frequencies

              # @!parse
              #   # @param schedule_stop_times [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime>]
              #   # @param trip_headsign [String]
              #   # @param schedule_frequencies [Array<OnebusawaySDK::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency>]
              #   #
              #   def initialize(schedule_stop_times:, trip_headsign:, schedule_frequencies: nil, **) = super

              # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

              class ScheduleStopTime < OnebusawaySDK::BaseModel
                # @!attribute arrival_enabled
                #
                #   @return [Boolean]
                required :arrival_enabled, OnebusawaySDK::BooleanModel, api_name: :arrivalEnabled

                # @!attribute arrival_time
                #
                #   @return [Integer]
                required :arrival_time, Integer, api_name: :arrivalTime

                # @!attribute departure_enabled
                #
                #   @return [Boolean]
                required :departure_enabled, OnebusawaySDK::BooleanModel, api_name: :departureEnabled

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

                # @!attribute [r] stop_headsign
                #
                #   @return [String, nil]
                optional :stop_headsign, String, api_name: :stopHeadsign

                # @!parse
                #   # @return [String]
                #   attr_writer :stop_headsign

                # @!parse
                #   # @param arrival_enabled [Boolean]
                #   # @param arrival_time [Integer]
                #   # @param departure_enabled [Boolean]
                #   # @param departure_time [Integer]
                #   # @param service_id [String]
                #   # @param trip_id [String]
                #   # @param stop_headsign [String]
                #   #
                #   def initialize(
                #     arrival_enabled:,
                #     arrival_time:,
                #     departure_enabled:,
                #     departure_time:,
                #     service_id:,
                #     trip_id:,
                #     stop_headsign: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
              end

              class ScheduleFrequency < OnebusawaySDK::BaseModel
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

                # @!parse
                #   # @param end_time [Integer]
                #   # @param headway [Integer]
                #   # @param service_date [Integer]
                #   # @param service_id [String]
                #   # @param start_time [Integer]
                #   # @param trip_id [String]
                #   #
                #   def initialize(end_time:, headway:, service_date:, service_id:, start_time:, trip_id:, **) = super

                # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
              end
            end
          end
        end
      end
    end
  end
end
