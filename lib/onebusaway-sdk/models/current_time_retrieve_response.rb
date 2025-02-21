# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class CurrentTimeRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

      class Data < OnebusawaySDK::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param entry [OnebusawaySDK::Models::CurrentTimeRetrieveResponse::Data::Entry]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

        class Entry < OnebusawaySDK::BaseModel
          # @!attribute [r] readable_time
          #
          #   @return [String, nil]
          optional :readable_time, String, api_name: :readableTime

          # @!parse
          #   # @return [String]
          #   attr_writer :readable_time

          # @!attribute [r] time
          #
          #   @return [Integer, nil]
          optional :time, Integer

          # @!parse
          #   # @return [Integer]
          #   attr_writer :time

          # @!parse
          #   # @param readable_time [String]
          #   # @param time [Integer]
          #   #
          #   def initialize(readable_time: nil, time: nil, **) = super

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
        end
      end
    end
  end
end
