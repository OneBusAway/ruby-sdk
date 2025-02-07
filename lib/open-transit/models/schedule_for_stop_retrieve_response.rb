# frozen_string_literal: true

module OpenTransit
  module Models
    class ScheduleForStopRetrieveResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::ScheduleForStopRetrieveResponse::Data]
      required :data, -> { OpenTransit::Models::ScheduleForStopRetrieveResponse::Data }

      # @!parse
      #   # @param data [OpenTransit::Models::ScheduleForStopRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry,
      #   references: OpenTransit::Models::References
      # }
      # ```
      class Data < OpenTransit::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OpenTransit::Models::References]
        required :references, -> { OpenTransit::Models::References }

        # @!parse
        #   # @param entry [OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry]
        #   # @param references [OpenTransit::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OpenTransit::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   date: Integer,
        #   stop_id: String,
        #   stop_route_schedules: -> { OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule] === _1 }
        # }
        # ```
        class Entry < OpenTransit::BaseModel
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
          #   @return [Array<OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule>]
          required :stop_route_schedules,
                   -> {
                     OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule]
                   },
                   api_name: :stopRouteSchedules

          # @!parse
          #   # @param date [Integer]
          #   # @param stop_id [String]
          #   # @param stop_route_schedules [Array<OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule>]
          #   #
          #   def initialize(date:, stop_id:, stop_route_schedules:, **) = super

          # def initialize: (Hash | OpenTransit::BaseModel) -> void

          # @example
          # ```ruby
          # stop_route_schedule => {
          #   route_id: String,
          #   stop_route_direction_schedules: -> { OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule] === _1 }
          # }
          # ```
          class StopRouteSchedule < OpenTransit::BaseModel
            # @!attribute route_id
            #
            #   @return [String]
            required :route_id, String, api_name: :routeId

            # @!attribute stop_route_direction_schedules
            #
            #   @return [Array<OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule>]
            required :stop_route_direction_schedules,
                     -> {
                       OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule]
                     },
                     api_name: :stopRouteDirectionSchedules

            # @!parse
            #   # @param route_id [String]
            #   # @param stop_route_direction_schedules [Array<OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule>]
            #   #
            #   def initialize(route_id:, stop_route_direction_schedules:, **) = super

            # def initialize: (Hash | OpenTransit::BaseModel) -> void

            # @example
            # ```ruby
            # stop_route_direction_schedule => {
            #   schedule_stop_times: -> { OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime] === _1 },
            #   trip_headsign: String,
            #   schedule_frequencies: -> { OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency] === _1 }
            # }
            # ```
            class StopRouteDirectionSchedule < OpenTransit::BaseModel
              # @!attribute schedule_stop_times
              #
              #   @return [Array<OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime>]
              required :schedule_stop_times,
                       -> {
                         OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime]
                       },
                       api_name: :scheduleStopTimes

              # @!attribute trip_headsign
              #
              #   @return [String]
              required :trip_headsign, String, api_name: :tripHeadsign

              # @!attribute [r] schedule_frequencies
              #
              #   @return [Array<OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency>, nil]
              optional :schedule_frequencies,
                       -> {
                         OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency]
                       },
                       api_name: :scheduleFrequencies

              # @!parse
              #   # @return [Array<OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency>]
              #   attr_writer :schedule_frequencies

              # @!parse
              #   # @param schedule_stop_times [Array<OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleStopTime>]
              #   # @param trip_headsign [String]
              #   # @param schedule_frequencies [Array<OpenTransit::Models::ScheduleForStopRetrieveResponse::Data::Entry::StopRouteSchedule::StopRouteDirectionSchedule::ScheduleFrequency>]
              #   #
              #   def initialize(schedule_stop_times:, trip_headsign:, schedule_frequencies: nil, **) = super

              # def initialize: (Hash | OpenTransit::BaseModel) -> void

              # @example
              # ```ruby
              # schedule_stop_time => {
              #   arrival_enabled: OpenTransit::BooleanModel,
              #   arrival_time: Integer,
              #   departure_enabled: OpenTransit::BooleanModel,
              #   departure_time: Integer,
              #   service_id: String,
              #   **_
              # }
              # ```
              class ScheduleStopTime < OpenTransit::BaseModel
                # @!attribute arrival_enabled
                #
                #   @return [Boolean]
                required :arrival_enabled, OpenTransit::BooleanModel, api_name: :arrivalEnabled

                # @!attribute arrival_time
                #
                #   @return [Integer]
                required :arrival_time, Integer, api_name: :arrivalTime

                # @!attribute departure_enabled
                #
                #   @return [Boolean]
                required :departure_enabled, OpenTransit::BooleanModel, api_name: :departureEnabled

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

                # def initialize: (Hash | OpenTransit::BaseModel) -> void
              end

              # @example
              # ```ruby
              # schedule_frequency => {
              #   end_time: Integer,
              #   headway: Integer,
              #   service_date: Integer,
              #   service_id: String,
              #   start_time: Integer
              # }
              # ```
              class ScheduleFrequency < OpenTransit::BaseModel
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

                # def initialize: (Hash | OpenTransit::BaseModel) -> void
              end
            end
          end
        end
      end
    end
  end
end
