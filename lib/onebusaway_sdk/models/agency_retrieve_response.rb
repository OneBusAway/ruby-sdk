# frozen_string_literal: true

module OnebusawaySDK
  module Models
    # @see OnebusawaySDK::Resources::Agency#retrieve
    class AgencyRetrieveResponse < OnebusawaySDK::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OnebusawaySDK::Models::AgencyRetrieveResponse::Data]
      required :data, -> { OnebusawaySDK::Models::AgencyRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OnebusawaySDK::Models::AgencyRetrieveResponse::Data]

      class Data < OnebusawaySDK::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry]
        required :entry, -> { OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry }

        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OnebusawaySDK::Internal::Type::Boolean, api_name: :limitExceeded

        # @!attribute references
        #
        #   @return [OnebusawaySDK::Models::References]
        required :references, -> { OnebusawaySDK::Models::References }

        # @!method initialize(entry:, limit_exceeded:, references:)
        #   @param entry [OnebusawaySDK::Models::AgencyRetrieveResponse::Data::Entry]
        #   @param limit_exceeded [Boolean]
        #   @param references [OnebusawaySDK::Models::References]

        # @see OnebusawaySDK::Models::AgencyRetrieveResponse::Data#entry
        class Entry < OnebusawaySDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute timezone
          #
          #   @return [String]
          required :timezone, String

          # @!attribute url
          #
          #   @return [String]
          required :url, String

          # @!attribute [r] disclaimer
          #
          #   @return [String, nil]
          optional :disclaimer, String

          # @!parse
          #   # @return [String]
          #   attr_writer :disclaimer

          # @!attribute [r] email
          #
          #   @return [String, nil]
          optional :email, String

          # @!parse
          #   # @return [String]
          #   attr_writer :email

          # @!attribute [r] fare_url
          #
          #   @return [String, nil]
          optional :fare_url, String, api_name: :fareUrl

          # @!parse
          #   # @return [String]
          #   attr_writer :fare_url

          # @!attribute [r] lang
          #
          #   @return [String, nil]
          optional :lang, String

          # @!parse
          #   # @return [String]
          #   attr_writer :lang

          # @!attribute [r] phone
          #
          #   @return [String, nil]
          optional :phone, String

          # @!parse
          #   # @return [String]
          #   attr_writer :phone

          # @!attribute [r] private_service
          #
          #   @return [Boolean, nil]
          optional :private_service, OnebusawaySDK::Internal::Type::Boolean, api_name: :privateService

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :private_service

          # @!method initialize(id:, name:, timezone:, url:, disclaimer: nil, email: nil, fare_url: nil, lang: nil, phone: nil, private_service: nil)
          #   @param id [String]
          #   @param name [String]
          #   @param timezone [String]
          #   @param url [String]
          #   @param disclaimer [String]
          #   @param email [String]
          #   @param fare_url [String]
          #   @param lang [String]
          #   @param phone [String]
          #   @param private_service [Boolean]
        end
      end
    end
  end
end
