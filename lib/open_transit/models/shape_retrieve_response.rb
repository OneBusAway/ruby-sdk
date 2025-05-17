# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::Shape#retrieve
    class ShapeRetrieveResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::ShapeRetrieveResponse::Data]
      required :data, -> { OpenTransit::Models::ShapeRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OpenTransit::Models::ShapeRetrieveResponse::Data]

      class Data < OpenTransit::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::ShapeRetrieveResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::ShapeRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OpenTransit::References]
        required :references, -> { OpenTransit::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OpenTransit::Models::ShapeRetrieveResponse::Data::Entry]
        #   @param references [OpenTransit::References]

        # @see OpenTransit::Models::ShapeRetrieveResponse::Data#entry
        class Entry < OpenTransit::Internal::Type::BaseModel
          # @!attribute length
          #
          #   @return [Integer]
          required :length, Integer

          # @!attribute points
          #   Encoded polyline format representing the shape of the path
          #
          #   @return [String]
          required :points, String

          # @!attribute levels
          #
          #   @return [String, nil]
          optional :levels, String

          # @!method initialize(length:, points:, levels: nil)
          #   @param length [Integer]
          #
          #   @param points [String] Encoded polyline format representing the shape of the path
          #
          #   @param levels [String]
        end
      end
    end
  end
end
