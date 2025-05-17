# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::CurrentTime#retrieve
    class CurrentTimeRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::References]
        required :references, -> { OnebusawaySDK::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry]
        #   @param references [OnebusawaySDK::References]

        # @see OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::Internal::Type::BaseModel
          # @!attribute readable_time
          #
          #   @return [String, nil]
          optional :readable_time, String, api_name: :readableTime

          # @!attribute time
          #
          #   @return [Integer, nil]
          optional :time, Integer

          # @!method initialize(readable_time: nil, time: nil)
          #   @param readable_time [String]
          #   @param time [Integer]
        end
      end
    end
  end
end
