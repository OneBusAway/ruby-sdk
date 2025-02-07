# frozen_string_literal: true

module OpenTransit
  module Models
    class ShapeRetrieveResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::ShapeRetrieveResponse::Data]
      required :data, -> { OpenTransit::Models::ShapeRetrieveResponse::Data }

      # @!parse
      #   # @param data [OpenTransit::Models::ShapeRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: OpenTransit::Models::ShapeRetrieveResponse::Data::Entry,
      #   references: OpenTransit::Models::References
      # }
      # ```
      class Data < OpenTransit::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::ShapeRetrieveResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::ShapeRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OpenTransit::Models::References]
        required :references, -> { OpenTransit::Models::References }

        # @!parse
        #   # @param entry [OpenTransit::Models::ShapeRetrieveResponse::Data::Entry]
        #   # @param references [OpenTransit::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OpenTransit::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   length: Integer,
        #   points: String,
        #   levels: String
        # }
        # ```
        class Entry < OpenTransit::BaseModel
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

          # def initialize: (Hash | OpenTransit::BaseModel) -> void
        end
      end
    end
  end
end
