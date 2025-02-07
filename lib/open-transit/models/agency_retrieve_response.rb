# frozen_string_literal: true

module OpenTransit
  module Models
    class AgencyRetrieveResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::AgencyRetrieveResponse::Data]
      required :data, -> { OpenTransit::Models::AgencyRetrieveResponse::Data }

      # @!parse
      #   # @param data [OpenTransit::Models::AgencyRetrieveResponse::Data]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   entry: OpenTransit::Models::AgencyRetrieveResponse::Data::Entry,
      #   limit_exceeded: OpenTransit::BooleanModel,
      #   references: OpenTransit::Models::References
      # }
      # ```
      class Data < OpenTransit::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::AgencyRetrieveResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::AgencyRetrieveResponse::Data::Entry }

        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OpenTransit::BooleanModel, api_name: :limitExceeded

        # @!attribute references
        #
        #   @return [OpenTransit::Models::References]
        required :references, -> { OpenTransit::Models::References }

        # @!parse
        #   # @param entry [OpenTransit::Models::AgencyRetrieveResponse::Data::Entry]
        #   # @param limit_exceeded [Boolean]
        #   # @param references [OpenTransit::Models::References]
        #   #
        #   def initialize(entry:, limit_exceeded:, references:, **) = super

        # def initialize: (Hash | OpenTransit::BaseModel) -> void

        # @example
        # ```ruby
        # entry => {
        #   id: String,
        #   name: String,
        #   timezone: String,
        #   url: String,
        #   disclaimer: String,
        #   **_
        # }
        # ```
        class Entry < OpenTransit::BaseModel
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
          optional :private_service, OpenTransit::BooleanModel, api_name: :privateService

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :private_service

          # @!parse
          #   # @param id [String]
          #   # @param name [String]
          #   # @param timezone [String]
          #   # @param url [String]
          #   # @param disclaimer [String]
          #   # @param email [String]
          #   # @param fare_url [String]
          #   # @param lang [String]
          #   # @param phone [String]
          #   # @param private_service [Boolean]
          #   #
          #   def initialize(
          #     id:,
          #     name:,
          #     timezone:,
          #     url:,
          #     disclaimer: nil,
          #     email: nil,
          #     fare_url: nil,
          #     lang: nil,
          #     phone: nil,
          #     private_service: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | OpenTransit::BaseModel) -> void
        end
      end
    end
  end
end
