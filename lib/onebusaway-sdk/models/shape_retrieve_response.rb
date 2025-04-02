# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::Shape#retrieve
    class ShapeRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::ShapeRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::ShapeRetrieveResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::ShapeRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

      class Data < OnebusawaySDK::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param entry [OnebusawaySDK::Models::ShapeRetrieveResponse::Data::Entry]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void

        # @see OnebusawaySDK::Models::ShapeRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::BaseModel
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

          # def initialize: (Hash | OnebusawaySDK::BaseModel) -> void
        end
      end
    end
  end
end
