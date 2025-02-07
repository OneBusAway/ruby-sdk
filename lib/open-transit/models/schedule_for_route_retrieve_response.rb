# frozen_string_literal: true

module OpenTransit
  module Models
    class ScheduleForRouteRetrieveResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data]
      required :data, -> { OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data }

      # @!parse
      #   # @param data [OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry
      # }
      # ```
      class Data < OpenTransit::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry }

        # @!parse
        #   # @param entry [OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry]
        #   #
        #   def initialize(entry:, **) = super

        # def initialize: (Hash | OpenTransit::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   route_id: String,
        #   schedule_date: Integer,
        #   service_ids: -> { OpenTransit::ArrayOf[String] === _1 },
        #   stops: -> { OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop] === _1 },
        #   stop_trip_groupings: -> { OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping] === _1 }
        # }
        # ```
        class Entry < OpenTransit::BaseModel
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
          required :service_ids, OpenTransit::ArrayOf[String], api_name: :serviceIds

          # @!attribute stops
          #
          #   @return [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop>]
          required :stops,
                   -> {
                     OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop]
                   }

          # @!attribute stop_trip_groupings
          #
          #   @return [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping>]
          required :stop_trip_groupings,
                   -> {
                     OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping]
                   },
                   api_name: :stopTripGroupings

          # @!attribute trips
          #
          #   @return [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip>]
          required :trips,
                   -> {
                     OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip]
                   }

          # @!parse
          #   # @param route_id [String]
          #   # @param schedule_date [Integer]
          #   # @param service_ids [Array<String>]
          #   # @param stops [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Stop>]
          #   # @param stop_trip_groupings [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping>]
          #   # @param trips [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::Trip>]
          #   #
          #   def initialize(route_id:, schedule_date:, service_ids:, stops:, stop_trip_groupings:, trips:, **) = super

          # def initialize: (Hash | OpenTransit::BaseModel) -> void

          # @example
          # ```ruby
          # stop => {
          #   id: String,
          #   lat: Float,
          #   lon: Float,
          #   name: String,
          #   parent: String,
          #   **_
          # }
          # ```
          class Stop < OpenTransit::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute lat
            #
            #   @return [Float]
            required :lat, Float

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
            required :route_ids, OpenTransit::ArrayOf[String], api_name: :routeIds

            # @!attribute static_route_ids
            #
            #   @return [Array<String>]
            required :static_route_ids, OpenTransit::ArrayOf[String], api_name: :staticRouteIds

            # @!attribute [r] code
            #
            #   @return [String, nil]
            optional :code, String

            # @!parse
            #   # @return [String]
            #   attr_writer :code

            # @!attribute [r] direction
            #
            #   @return [String, nil]
            optional :direction, String

            # @!parse
            #   # @return [String]
            #   attr_writer :direction

            # @!attribute [r] location_type
            #
            #   @return [Integer, nil]
            optional :location_type, Integer, api_name: :locationType

            # @!parse
            #   # @return [Integer]
            #   attr_writer :location_type

            # @!attribute [r] wheelchair_boarding
            #
            #   @return [String, nil]
            optional :wheelchair_boarding, String, api_name: :wheelchairBoarding

            # @!parse
            #   # @return [String]
            #   attr_writer :wheelchair_boarding

            # @!parse
            #   # @param id [String]
            #   # @param lat [Float]
            #   # @param lon [Float]
            #   # @param name [String]
            #   # @param parent [String]
            #   # @param route_ids [Array<String>]
            #   # @param static_route_ids [Array<String>]
            #   # @param code [String]
            #   # @param direction [String]
            #   # @param location_type [Integer]
            #   # @param wheelchair_boarding [String]
            #   #
            #   def initialize(
            #     id:,
            #     lat:,
            #     lon:,
            #     name:,
            #     parent:,
            #     route_ids:,
            #     static_route_ids:,
            #     code: nil,
            #     direction: nil,
            #     location_type: nil,
            #     wheelchair_boarding: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | OpenTransit::BaseModel) -> void
          end

          # @example
          # ```ruby
          # stop_trip_grouping => {
          #   direction_id: String,
          #   stop_ids: -> { OpenTransit::ArrayOf[String] === _1 },
          #   trip_headsigns: -> { OpenTransit::ArrayOf[String] === _1 },
          #   trip_ids: -> { OpenTransit::ArrayOf[String] === _1 },
          #   trips_with_stop_times: -> { OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime] === _1 }
          # }
          # ```
          class StopTripGrouping < OpenTransit::BaseModel
            # @!attribute direction_id
            #
            #   @return [String]
            required :direction_id, String, api_name: :directionId

            # @!attribute stop_ids
            #
            #   @return [Array<String>]
            required :stop_ids, OpenTransit::ArrayOf[String], api_name: :stopIds

            # @!attribute trip_headsigns
            #
            #   @return [Array<String>]
            required :trip_headsigns, OpenTransit::ArrayOf[String], api_name: :tripHeadsigns

            # @!attribute trip_ids
            #
            #   @return [Array<String>]
            required :trip_ids, OpenTransit::ArrayOf[String], api_name: :tripIds

            # @!attribute [r] trips_with_stop_times
            #
            #   @return [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime>, nil]
            optional :trips_with_stop_times,
                     -> {
                       OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime]
                     },
                     api_name: :tripsWithStopTimes

            # @!parse
            #   # @return [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime>]
            #   attr_writer :trips_with_stop_times

            # @!parse
            #   # @param direction_id [String]
            #   # @param stop_ids [Array<String>]
            #   # @param trip_headsigns [Array<String>]
            #   # @param trip_ids [Array<String>]
            #   # @param trips_with_stop_times [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime>]
            #   #
            #   def initialize(direction_id:, stop_ids:, trip_headsigns:, trip_ids:, trips_with_stop_times: nil, **) = super

            # def initialize: (Hash | OpenTransit::BaseModel) -> void

            # @example
            # ```ruby
            # trips_with_stop_time => {
            #   stop_times: -> { OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime] === _1 },
            #   trip_id: String
            # }
            # ```
            class TripsWithStopTime < OpenTransit::BaseModel
              # @!attribute stop_times
              #
              #   @return [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime>]
              required :stop_times,
                       -> {
                         OpenTransit::ArrayOf[OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime]
                       },
                       api_name: :stopTimes

              # @!attribute trip_id
              #
              #   @return [String]
              required :trip_id, String, api_name: :tripId

              # @!parse
              #   # @param stop_times [Array<OpenTransit::Models::ScheduleForRouteRetrieveResponse::Data::Entry::StopTripGrouping::TripsWithStopTime::StopTime>]
              #   # @param trip_id [String]
              #   #
              #   def initialize(stop_times:, trip_id:, **) = super

              # def initialize: (Hash | OpenTransit::BaseModel) -> void

              # @example
              # ```ruby
              # stop_time => {
              #   arrival_enabled: OpenTransit::BooleanModel,
              #   arrival_time: Integer,
              #   departure_enabled: OpenTransit::BooleanModel,
              #   departure_time: Integer,
              #   stop_id: String,
              #   **_
              # }
              # ```
              class StopTime < OpenTransit::BaseModel
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

                # @!attribute stop_id
                #
                #   @return [String]
                required :stop_id, String, api_name: :stopId

                # @!attribute trip_id
                #
                #   @return [String]
                required :trip_id, String, api_name: :tripId

                # @!attribute [r] service_id
                #
                #   @return [String, nil]
                optional :service_id, String, api_name: :serviceId

                # @!parse
                #   # @return [String]
                #   attr_writer :service_id

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
                #   # @param stop_id [String]
                #   # @param trip_id [String]
                #   # @param service_id [String]
                #   # @param stop_headsign [String]
                #   #
                #   def initialize(
                #     arrival_enabled:,
                #     arrival_time:,
                #     departure_enabled:,
                #     departure_time:,
                #     stop_id:,
                #     trip_id:,
                #     service_id: nil,
                #     stop_headsign: nil,
                #     **
                #   )
                #     super
                #   end

                # def initialize: (Hash | OpenTransit::BaseModel) -> void
              end
            end
          end

          # @example
          # ```ruby
          # trip => {
          #   id: String,
          #   route_id: String,
          #   service_id: String,
          #   block_id: String,
          #   direction_id: String,
          #   **_
          # }
          # ```
          class Trip < OpenTransit::BaseModel
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

            # @!attribute [r] block_id
            #
            #   @return [String, nil]
            optional :block_id, String, api_name: :blockId

            # @!parse
            #   # @return [String]
            #   attr_writer :block_id

            # @!attribute [r] direction_id
            #
            #   @return [String, nil]
            optional :direction_id, String, api_name: :directionId

            # @!parse
            #   # @return [String]
            #   attr_writer :direction_id

            # @!attribute [r] peak_offpeak
            #
            #   @return [Integer, nil]
            optional :peak_offpeak, Integer, api_name: :peakOffpeak

            # @!parse
            #   # @return [Integer]
            #   attr_writer :peak_offpeak

            # @!attribute [r] route_short_name
            #
            #   @return [String, nil]
            optional :route_short_name, String, api_name: :routeShortName

            # @!parse
            #   # @return [String]
            #   attr_writer :route_short_name

            # @!attribute [r] shape_id
            #
            #   @return [String, nil]
            optional :shape_id, String, api_name: :shapeId

            # @!parse
            #   # @return [String]
            #   attr_writer :shape_id

            # @!attribute [r] time_zone
            #
            #   @return [String, nil]
            optional :time_zone, String, api_name: :timeZone

            # @!parse
            #   # @return [String]
            #   attr_writer :time_zone

            # @!attribute [r] trip_headsign
            #
            #   @return [String, nil]
            optional :trip_headsign, String, api_name: :tripHeadsign

            # @!parse
            #   # @return [String]
            #   attr_writer :trip_headsign

            # @!attribute [r] trip_short_name
            #
            #   @return [String, nil]
            optional :trip_short_name, String, api_name: :tripShortName

            # @!parse
            #   # @return [String]
            #   attr_writer :trip_short_name

            # @!parse
            #   # @param id [String]
            #   # @param route_id [String]
            #   # @param service_id [String]
            #   # @param block_id [String]
            #   # @param direction_id [String]
            #   # @param peak_offpeak [Integer]
            #   # @param route_short_name [String]
            #   # @param shape_id [String]
            #   # @param time_zone [String]
            #   # @param trip_headsign [String]
            #   # @param trip_short_name [String]
            #   #
            #   def initialize(
            #     id:,
            #     route_id:,
            #     service_id:,
            #     block_id: nil,
            #     direction_id: nil,
            #     peak_offpeak: nil,
            #     route_short_name: nil,
            #     shape_id: nil,
            #     time_zone: nil,
            #     trip_headsign: nil,
            #     trip_short_name: nil,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | OpenTransit::BaseModel) -> void
          end
        end
      end
    end
  end
end
