# frozen_string_literal: true

module OpenTransit
  module Models
    class CurrentTimeRetrieveResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::CurrentTimeRetrieveResponse::Data]
      required :data, -> { OpenTransit::Models::CurrentTimeRetrieveResponse::Data }

      # @!parse
      #   # @param data [OpenTransit::Models::CurrentTimeRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry,
      #   references: OpenTransit::Models::References
      # }
      # ```
      class Data < OpenTransit::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OpenTransit::Models::References]
        required :references, -> { OpenTransit::Models::References }

        # @!parse
        #   # @param entry [OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry]
        #   # @param references [OpenTransit::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OpenTransit::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   readable_time: String,
        #   time: Integer
        # }
        # ```
        class Entry < OpenTransit::BaseModel
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

          # def initialize: (Hash | OpenTransit::BaseModel) -> void
        end
      end
    end
  end
end
