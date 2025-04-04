# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::Route#retrieve
    class RouteRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::RouteRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::RouteRetrieveResponse::Data }

      # @!parse
      #   # @param data [OnebusawaySDK::Models::RouteRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::RouteRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::RouteRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!parse
        #   # @param entry [OnebusawaySDK::Models::RouteRetrieveResponse::Data::Entry]
        #   # @param references [OnebusawaySDK::Models::References]
        #   #
        #   def initialize(entry:, references:, **) = super

        # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void

        # @see OnebusawaySDK::Models::RouteRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute agency_id
          #
          #   @return [String]
          required :agency_id, String, api_name: :agencyId

          # @!attribute type
          #
          #   @return [Integer]
          required :type, Integer

          # @!attribute [r] color
          #
          #   @return [String, nil]
          optional :color, String

          # @!parse
          #   # @return [String]
          #   attr_writer :color

          # @!attribute [r] description
          #
          #   @return [String, nil]
          optional :description, String

          # @!parse
          #   # @return [String]
          #   attr_writer :description

          # @!attribute [r] long_name
          #
          #   @return [String, nil]
          optional :long_name, String, api_name: :longName

          # @!parse
          #   # @return [String]
          #   attr_writer :long_name

          # @!attribute [r] null_safe_short_name
          #
          #   @return [String, nil]
          optional :null_safe_short_name, String, api_name: :nullSafeShortName

          # @!parse
          #   # @return [String]
          #   attr_writer :null_safe_short_name

          # @!attribute [r] short_name
          #
          #   @return [String, nil]
          optional :short_name, String, api_name: :shortName

          # @!parse
          #   # @return [String]
          #   attr_writer :short_name

          # @!attribute [r] text_color
          #
          #   @return [String, nil]
          optional :text_color, String, api_name: :textColor

          # @!parse
          #   # @return [String]
          #   attr_writer :text_color

          # @!attribute [r] url
          #
          #   @return [String, nil]
          optional :url, String

          # @!parse
          #   # @return [String]
          #   attr_writer :url

          # @!parse
          #   # @param id [String]
          #   # @param agency_id [String]
          #   # @param type [Integer]
          #   # @param color [String]
          #   # @param description [String]
          #   # @param long_name [String]
          #   # @param null_safe_short_name [String]
          #   # @param short_name [String]
          #   # @param text_color [String]
          #   # @param url [String]
          #   #
          #   def initialize(
          #     id:,
          #     agency_id:,
          #     type:,
          #     color: nil,
          #     description: nil,
          #     long_name: nil,
          #     null_safe_short_name: nil,
          #     short_name: nil,
          #     text_color: nil,
          #     url: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | OnebusawaySDK::Internal::Type::BaseModel) -> void
        end
      end
    end
  end
end
