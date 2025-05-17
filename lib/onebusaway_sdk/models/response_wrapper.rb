# frozen_string_literal: true

module OnebusawaySDK
  module Models
    class ResponseWrapper < OnebusawaySDK::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [Integer]
      required :code, Integer

      # @!attribute current_time
      #
      #   @return [Integer]
      required :current_time, Integer, api_name: :currentTime

      # @!attribute text
      #
      #   @return [String]
      required :text, String

      # @!attribute version
      #
      #   @return [Integer]
      required :version, Integer

      # @!method initialize(code:, current_time:, text:, version:)
      #   @param code [Integer]
      #   @param current_time [Integer]
      #   @param text [String]
      #   @param version [Integer]
    end
  end
end
