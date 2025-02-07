# frozen_string_literal: true

module Onebusaway
  module Models
    class CurrentTimeRetrieveResponse < Onebusaway::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [Onebusaway::Models::CurrentTimeRetrieveResponse::Data]
      required :data, -> { Onebusaway::Models::CurrentTimeRetrieveResponse::Data }

      # @!parse
      #   # @param data [Onebusaway::Models::CurrentTimeRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Onebusaway::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: Onebusaway::Models::CurrentTimeRetrieveResponse::Data::Entry,
      #   references: Onebusaway::Models::References
      # }
      # ```
      class Data < Onebusaway::BaseModel
        # @!attribute entry
        #
        #   @return [Onebusaway::Models::CurrentTimeRetrieveResponse::Data::Entry]
        required :entry, -> { Onebusaway::Models::CurrentTimeRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [Onebusaway::Models::References]
        required :references, -> { Onebusaway::Models::References }

        # @!parse
        #   # @param entry [Onebusaway::Models::CurrentTimeRetrieveResponse::Data::Entry]
        #   # @param references [Onebusaway::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | Onebusaway::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   readable_time: String,
        #   time: Integer
        # }
        # ```
        class Entry < Onebusaway::BaseModel
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

          # def initialize: (Hash | Onebusaway::BaseModel) -> void
        end
      end
    end
  end
end
