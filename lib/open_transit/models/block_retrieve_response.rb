# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::Block#retrieve
    class BlockRetrieveResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::BlockRetrieveResponse::Data]
      required :data, -> { OpenTransit::Models::BlockRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OpenTransit::Models::BlockRetrieveResponse::Data]

      class Data < OpenTransit::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::BlockRetrieveResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::BlockRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OpenTransit::References]
        required :references, -> { OpenTransit::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OpenTransit::Models::BlockRetrieveResponse::Data::Entry]
        #   @param references [OpenTransit::References]

        # @see OpenTransit::Models::BlockRetrieveResponse::Data#entry
        class Entry < OpenTransit::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute configurations
          #
          #   @return [Array<OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration>]
          required :configurations,
                   -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration] }

          # @!method initialize(id:, configurations:)
          #   @param id [String]
          #   @param configurations [Array<OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration>]

          class Configuration < OpenTransit::Internal::Type::BaseModel
            # @!attribute active_service_ids
            #
            #   @return [Array<String>]
            required :active_service_ids,
                     OpenTransit::Internal::Type::ArrayOf[String],
                     api_name: :activeServiceIds

            # @!attribute trips
            #
            #   @return [Array<OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip>]
            required :trips,
                     -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip] }

            # @!attribute inactive_service_ids
            #
            #   @return [Array<String>, nil]
            optional :inactive_service_ids,
                     OpenTransit::Internal::Type::ArrayOf[String],
                     api_name: :inactiveServiceIds

            # @!method initialize(active_service_ids:, trips:, inactive_service_ids: nil)
            #   @param active_service_ids [Array<String>]
            #   @param trips [Array<OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip>]
            #   @param inactive_service_ids [Array<String>]

            class Trip < OpenTransit::Internal::Type::BaseModel
              # @!attribute accumulated_slack_time
              #
              #   @return [Float]
              required :accumulated_slack_time, Float, api_name: :accumulatedSlackTime

              # @!attribute block_stop_times
              #
              #   @return [Array<OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime>]
              required :block_stop_times,
                       -> { OpenTransit::Internal::Type::ArrayOf[OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime] },
                       api_name: :blockStopTimes

              # @!attribute distance_along_block
              #
              #   @return [Float]
              required :distance_along_block, Float, api_name: :distanceAlongBlock

              # @!attribute trip_id
              #
              #   @return [String]
              required :trip_id, String, api_name: :tripId

              # @!method initialize(accumulated_slack_time:, block_stop_times:, distance_along_block:, trip_id:)
              #   @param accumulated_slack_time [Float]
              #   @param block_stop_times [Array<OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime>]
              #   @param distance_along_block [Float]
              #   @param trip_id [String]

              class BlockStopTime < OpenTransit::Internal::Type::BaseModel
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
                #   @return [OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime]
                required :stop_time,
                         -> { OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime },
                         api_name: :stopTime

                # @!method initialize(accumulated_slack_time:, block_sequence:, distance_along_block:, stop_time:)
                #   @param accumulated_slack_time [Float]
                #   @param block_sequence [Integer]
                #   @param distance_along_block [Float]
                #   @param stop_time [OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime::StopTime]

                # @see OpenTransit::Models::BlockRetrieveResponse::Data::Entry::Configuration::Trip::BlockStopTime#stop_time
                class StopTime < OpenTransit::Internal::Type::BaseModel
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

                  # @!attribute drop_off_type
                  #
                  #   @return [Integer, nil]
                  optional :drop_off_type, Integer, api_name: :dropOffType

                  # @!attribute pickup_type
                  #
                  #   @return [Integer, nil]
                  optional :pickup_type, Integer, api_name: :pickupType

                  # @!method initialize(arrival_time:, departure_time:, stop_id:, drop_off_type: nil, pickup_type: nil)
                  #   @param arrival_time [Integer]
                  #   @param departure_time [Integer]
                  #   @param stop_id [String]
                  #   @param drop_off_type [Integer]
                  #   @param pickup_type [Integer]
                end
              end
            end
          end
        end
      end
    end
  end
end
