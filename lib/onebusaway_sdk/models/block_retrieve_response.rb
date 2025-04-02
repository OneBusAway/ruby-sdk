# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::Block#retrieve
    class BlockRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::BlockRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::BlockRetrieveResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::BlockRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

      class Data < OnebusawaySDK::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param entry [OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

        # @see OnebusawaySDK::Models::BlockRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute configurations
          #
          #   @return [Array<OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration>]
          required :configurations,
                   -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration] }

          # @!parse
          #   # @param id [String]
          #   # @param configurations [Array<OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration>]
          #   #
          #   def initialize(id:, configurations:, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

          class Configuration < OnebusawaySDK::BaseModel
            # @!attribute active_service_ids
            #
            #   @return [Array<String>]
            required :active_service_ids, OnebusawaySDK::ArrayOf[String], api_name: :activeServiceIds

            # @!attribute trips
            #
            #   @return [Array<OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip>]
            required :trips,
                     -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip] }

            # @!attribute [r] inactive_service_ids
            #
            #   @return [Array<String>, nil]
            optional :inactive_service_ids, OnebusawaySDK::ArrayOf[String], api_name: :inactiveServiceIds

            # @!parse
            #   # @return [Array<String>]
            #   attr_writer :inactive_service_ids

            # @!parse
            #   # @param active_service_ids [Array<String>]
            #   # @param trips [Array<OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip>]
            #   # @param inactive_service_ids [Array<String>]
            #   #
            #   def initialize(active_service_ids:, trips:, inactive_service_ids: nil, **) = super

            # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

            class Trip < OnebusawaySDK::BaseModel
              # @!attribute accumulated_slack_time
              #
              #   @return [Float]
              required :accumulated_slack_time, Float, api_name: :accumulatedSlackTime

              # @!attribute block_stop_times
              #
              #   @return [Array<OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime>]
              required :block_stop_times,
                       -> { OnebusawaySDK::ArrayOf[OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime] },
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
              #   # @param block_stop_times [Array<OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime>]
              #   # @param distance_along_block [Float]
              #   # @param trip_id [String]
              #   #
              #   def initialize(accumulated_slack_time:, block_stop_times:, distance_along_block:, trip_id:, **) = super

              # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

              class BlockStopTime < OnebusawaySDK::BaseModel
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
                #   @return [OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime]
                required :stop_time,
                         -> { OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime },
                         api_name: :stopTime

                # @!parse
                #   # @param accumulated_slack_time [Float]
                #   # @param block_sequence [Integer]
                #   # @param distance_along_block [Float]
                #   # @param stop_time [OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime]
                #   #
                #   def initialize(accumulated_slack_time:, block_sequence:, distance_along_block:, stop_time:, **) = super

                # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

                # @see OnebusawaySDK::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime#stop_time
                class StopTime < OnebusawaySDK::BaseModel
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

                  # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
                end
              end
            end
          end
        end
      end
    end
  end
end
