# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::Route#retrieve
    class RouteRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::RouteRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::RouteRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::RouteRetrieveResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::RouteRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::RouteRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OnebusawaySDK::Models::RouteRetrieveResponse::Data::Entry]
        #   @param references [OnebusawaySDK::Models::References]

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

          # @!attribute color
          #
          #   @return [String, nil]
          optional :color, String

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute long_name
          #
          #   @return [String, nil]
          optional :long_name, String, api_name: :longName

          # @!attribute null_safe_short_name
          #
          #   @return [String, nil]
          optional :null_safe_short_name, String, api_name: :nullSafeShortName

          # @!attribute short_name
          #
          #   @return [String, nil]
          optional :short_name, String, api_name: :shortName

          # @!attribute text_color
          #
          #   @return [String, nil]
          optional :text_color, String, api_name: :textColor

          # @!attribute url
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(id:, agency_id:, type:, color: nil, description: nil, long_name: nil, null_safe_short_name: nil, short_name: nil, text_color: nil, url: nil)
          #   @param id [String]
          #   @param agency_id [String]
          #   @param type [Integer]
          #   @param color [String]
          #   @param description [String]
          #   @param long_name [String]
          #   @param null_safe_short_name [String]
          #   @param short_name [String]
          #   @param text_color [String]
          #   @param url [String]
        end
      end
    end
  end
end
