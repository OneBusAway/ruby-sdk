# frozen_string_literal: true

module Onebusaway
  module Models
    class BlockRetrieveResponse < Onebusaway::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [Onebusaway::Models::BlockRetrieveResponse::Data]
      required :data, -> { Onebusaway::Models::BlockRetrieveResponse::Data }

      # @!parse
      #   # @param data [Onebusaway::Models::BlockRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Onebusaway::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: Onebusaway::Models::BlockRetrieveResponse::Data::Entry,
      #   references: Onebusaway::Models::References
      # }
      # ```
      class Data < Onebusaway::BaseModel
        # @!attribute entry
        #
        #   @return [Onebusaway::Models::BlockRetrieveResponse::Data::Entry]
        required :entry, -> { Onebusaway::Models::BlockRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [Onebusaway::Models::References]
        required :references, -> { Onebusaway::Models::References }

        # @!parse
        #   # @param entry [Onebusaway::Models::BlockRetrieveResponse::Data::Entry]
        #   # @param references [Onebusaway::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | Onebusaway::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   id: String,
        #   configurations: -> { Onebusaway::ArrayOf[Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration] === _1 }
        # }
        # ```
        class Entry < Onebusaway::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute configurations
          #
          #   @return [Array<Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration>]
          required :configurations,
                   -> {
                     Onebusaway::ArrayOf[Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration]
                   }

          # @!parse
          #   # @param id [String]
          #   # @param configurations [Array<Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration>]
          #   #
          #   def initialize(id:, configurations:, **) = super

          # def initialize: (Hash | Onebusaway::BaseModel) -> void

          # @example
          # ```ruby
          # configuration => {
          #   active_service_ids: -> { Onebusaway::ArrayOf[String] === _1 },
          #   trips: -> { Onebusaway::ArrayOf[Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip] === _1 },
          #   inactive_service_ids: -> { Onebusaway::ArrayOf[String] === _1 }
          # }
          # ```
          class Configuration < Onebusaway::BaseModel
            # @!attribute active_service_ids
            #
            #   @return [Array<String>]
            required :active_service_ids, Onebusaway::ArrayOf[String], api_name: :activeServiceIds

            # @!attribute trips
            #
            #   @return [Array<Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip>]
            required :trips,
                     -> {
                       Onebusaway::ArrayOf[Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip]
                     }

            # @!attribute [r] inactive_service_ids
            #
            #   @return [Array<String>, nil]
            optional :inactive_service_ids, Onebusaway::ArrayOf[String], api_name: :inactiveServiceIds

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :inactive_service_ids

            # @!parse
            #   # @param active_service_ids [Array<String>]
            #   # @param trips [Array<Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip>]
            #   # @param inactive_service_ids [Array<String>]
            #   #
            #   def initialize(active_service_ids:, trips:, inactive_service_ids: nil, **) = super

            # def initialize: (Hash | Onebusaway::BaseModel) -> void

            # @example
            # ```ruby
            # trip => {
            #   accumulated_slack_time: Float,
            #   block_stop_times: -> { Onebusaway::ArrayOf[Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime] === _1 },
            #   distance_along_block: Float,
            #   trip_id: String
            # }
            # ```
            class Trip < Onebusaway::BaseModel
              # @!attribute accumulated_slack_time
              #
              #   @return [Float]
              required :accumulated_slack_time, Float, api_name: :accumulatedSlackTime

              # @!attribute block_stop_times
              #
              #   @return [Array<Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime>]
              required :block_stop_times,
                       -> {
                         Onebusaway::ArrayOf[Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime]
                       },
                       api_name: :blockStopTimes

              # @!attribute distance_along_block
              #
              #   @return [Float]
              required :distance_along_block, Float, api_name: :distanceAlongBlock

              # @!attribute trip_id
              #
              #   @return [String]
              required :trip_id, String, api_name: :tripId

              # @!parse
              #   # @param accumulated_slack_time [Float]
              #   # @param block_stop_times [Array<Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime>]
              #   # @param distance_along_block [Float]
              #   # @param trip_id [String]
              #   #
              #   def initialize(accumulated_slack_time:, block_stop_times:, distance_along_block:, trip_id:, **) = super

              # def initialize: (Hash | Onebusaway::BaseModel) -> void

              # @example
              # ```ruby
              # block_stop_time => {
              #   accumulated_slack_time: Float,
              #   block_sequence: Integer,
              #   distance_along_block: Float,
              #   stop_time: Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime
              # }
              # ```
              class BlockStopTime < Onebusaway::BaseModel
                # @!attribute accumulated_slack_time
                #
                #   @return [Float]
                required :accumulated_slack_time, Float, api_name: :accumulatedSlackTime

                # @!attribute block_sequence
                #
                #   @return [Integer]
                required :block_sequence, Integer, api_name: :blockSequence

                # @!attribute distance_along_block
                #
                #   @return [Float]
                required :distance_along_block, Float, api_name: :distanceAlongBlock

                # @!attribute stop_time
                #
                #   @return [Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime]
                required :stop_time,
                         -> {
                           Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime
                         },
                         api_name: :stopTime

                # @!parse
                #   # @param accumulated_slack_time [Float]
                #   # @param block_sequence [Integer]
                #   # @param distance_along_block [Float]
                #   # @param stop_time [Onebusaway::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime]
                #   #
                #   def initialize(accumulated_slack_time:, block_sequence:, distance_along_block:, stop_time:, **) = super

                # def initialize: (Hash | Onebusaway::BaseModel) -> void

                # @example
                # ```ruby
                # stop_time => {
                #   arrival_time: Integer,
                #   departure_time: Integer,
                #   stop_id: String,
                #   drop_off_type: Integer,
                #   pickup_type: Integer
                # }
                # ```
                class StopTime < Onebusaway::BaseModel
                  # @!attribute arrival_time
                  #
                  #   @return [Integer]
                  required :arrival_time, Integer, api_name: :arrivalTime

                  # @!attribute departure_time
                  #
                  #   @return [Integer]
                  required :departure_time, Integer, api_name: :departureTime

                  # @!attribute stop_id
                  #
                  #   @return [String]
                  required :stop_id, String, api_name: :stopId

                  # @!attribute [r] drop_off_type
                  #
                  #   @return [Integer, nil]
                  optional :drop_off_type, Integer, api_name: :dropOffType

                  # @!parse
                  #   # @return [Integer]
                  #   attr_writer :drop_off_type

                  # @!attribute [r] pickup_type
                  #
                  #   @return [Integer, nil]
                  optional :pickup_type, Integer, api_name: :pickupType

                  # @!parse
                  #   # @return [Integer]
                  #   attr_writer :pickup_type

                  # @!parse
                  #   # @param arrival_time [Integer]
                  #   # @param departure_time [Integer]
                  #   # @param stop_id [String]
                  #   # @param drop_off_type [Integer]
                  #   # @param pickup_type [Integer]
                  #   #
                  #   def initialize(arrival_time:, departure_time:, stop_id:, drop_off_type: nil, pickup_type: nil, **) = super

                  # def initialize: (Hash | Onebusaway::BaseModel) -> void
                end
              end
            end
          end
        end
      end
    end
  end
end
