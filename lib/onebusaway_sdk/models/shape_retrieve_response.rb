# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::Shape#retrieve
    class ShapeRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::ShapeRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::ShapeRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::ShapeRetrieveResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry]
        #   @param references [OnebusawaySDK::Models::References]

        # @see OnebusawaySDK::Models::ShapeRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::Internal::Type::BaseModel
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
