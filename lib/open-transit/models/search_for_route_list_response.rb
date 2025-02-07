# frozen_string_literal: true

module OpenTransit
  module Models
    class SearchForRouteListResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute [r] data
      #
      #   @return [OpenTransit::Models::SearchForRouteListResponse::Data, nil]
      optional :data, -> { OpenTransit::Models::SearchForRouteListResponse::Data }

      # @!parse
      #   # @return [OpenTransit::Models::SearchForRouteListResponse::Data]
      #   attr_writer :data

      # @!parse
      #   # @param data [OpenTransit::Models::SearchForRouteListResponse::Data]
      #   #
      #   def initialize(data: nil, **) = super

      # def initialize: (Hash | OpenTransit::BaseModel) -> void

      # @example
      # ```ruby
      # data => {
      #   limit_exceeded: OpenTransit::BooleanModel,
      #   list: -> { OpenTransit::ArrayOf[OpenTransit::Models::SearchForRouteListResponse::Data::List] === _1 },
      #   out_of_range: OpenTransit::BooleanModel,
      #   references: OpenTransit::Models::References
      # }
      # ```
      class Data < OpenTransit::BaseModel
        # @!attribute limit_exceeded
        #
        #   @return [Boolean]
        required :limit_exceeded, OpenTransit::BooleanModel, api_name: :limitExceeded

        # @!attribute list
        #
        #   @return [Array<OpenTransit::Models::SearchForRouteListResponse::Data::List>]
        required :list,
                 -> {
                   OpenTransit::ArrayOf[OpenTransit::Models::SearchForRouteListResponse::Data::List]
                 }

        # @!attribute out_of_range
        #
        #   @return [Boolean]
        required :out_of_range, OpenTransit::BooleanModel, api_name: :outOfRange

        # @!attribute references
        #
        #   @return [OpenTransit::Models::References]
        required :references, -> { OpenTransit::Models::References }

        # @!parse
        #   # @param limit_exceeded [Boolean]
        #   # @param list [Array<OpenTransit::Models::SearchForRouteListResponse::Data::List>]
        #   # @param out_of_range [Boolean]
        #   # @param references [OpenTransit::Models::References]
        #   #
        #   def initialize(limit_exceeded:, list:, out_of_range:, references:, **) = super

        # def initialize: (Hash | OpenTransit::BaseModel) -> void

        # @example
        # ```ruby
        # list => {
        #   id: String,
        #   agency_id: String,
        #   type: Integer,
        #   color: String,
        #   description: String,
        #   **_
        # }
        # ```
        class List < OpenTransit::BaseModel
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

          # def initialize: (Hash | OpenTransit::BaseModel) -> void
        end
      end
    end
  end
end
