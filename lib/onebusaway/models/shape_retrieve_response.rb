# frozen_string_literal: true

module Onebusaway
  module Models
    class ShapeRetrieveResponse < Onebusaway::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [Onebusaway::Models::ShapeRetrieveResponse::Data]
      required :data, -> { Onebusaway::Models::ShapeRetrieveResponse::Data }

      # @!parse
      #   # @param data [Onebusaway::Models::ShapeRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Onebusaway::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: Onebusaway::Models::ShapeRetrieveResponse::Data::Entry,
      #   references: Onebusaway::Models::References
      # }
      # ```
      class Data < Onebusaway::BaseModel
        # @!attribute entry
        #
        #   @return [Onebusaway::Models::ShapeRetrieveResponse::Data::Entry]
        required :entry, -> { Onebusaway::Models::ShapeRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [Onebusaway::Models::References]
        required :references, -> { Onebusaway::Models::References }

        # @!parse
        #   # @param entry [Onebusaway::Models::ShapeRetrieveResponse::Data::Entry]
        #   # @param references [Onebusaway::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | Onebusaway::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   length: Integer,
        #   points: String,
        #   levels: String
        # }
        # ```
        class Entry < Onebusaway::BaseModel
          # @!attribute length
          #
          #   @return [Integer]
          required :length, Integer

          # @!attribute points
          #   Encoded polyline format representing the shape of the path
          #
          #   @return [String]
          required :points, String

          # @!attribute [r] levels
          #
          #   @return [String, nil]
          optional :levels, String

          # @!parse
          #   # @return [String]
          #   attr_writer :levels

          # @!parse
          #   # @param length [Integer]
          #   # @param points [String]
          #   # @param levels [String]
          #   #
          #   def initialize(length:, points:, levels: nil, **) = super

          # def initialize: (Hash | Onebusaway::BaseModel) -> void
        end
      end
    end
  end
end
