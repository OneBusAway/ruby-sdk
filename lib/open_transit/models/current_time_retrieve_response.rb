# frozen_string_literal: true

module OpenTransit
  module Models
    # @see OpenTransit::Resources::CurrentTime#retrieve
    class CurrentTimeRetrieveResponse < OpenTransit::Models::ResponseWrapper
      # @!attribute data
      #
      #   @return [OpenTransit::Models::CurrentTimeRetrieveResponse::Data]
      required :data, -> { OpenTransit::Models::CurrentTimeRetrieveResponse::Data }

      # @!method initialize(data:)
      #   @param data [OpenTransit::Models::CurrentTimeRetrieveResponse::Data]

      class Data < OpenTransit::Internal::Type::BaseModel
        # @!attribute entry
        #
        #   @return [OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry]
        required :entry, -> { OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry }

        # @!attribute references
        #
        #   @return [OpenTransit::References]
        required :references, -> { OpenTransit::References }

        # @!method initialize(entry:, references:)
        #   @param entry [OpenTransit::Models::CurrentTimeRetrieveResponse::Data::Entry]
        #   @param references [OpenTransit::References]

        # @see OpenTransit::Models::CurrentTimeRetrieveResponse::Data#entry
        class Entry < OpenTransit::Internal::Type::BaseModel
          # @!attribute readable_time
          #
          #   @return [String, nil]
          optional :readable_time, String, api_name: :readableTime

          # @!attribute time
          #
          #   @return [Integer, nil]
          optional :time, Integer

          # @!method initialize(readable_time: nil, time: nil)
          #   @param readable_time [String]
          #   @param time [Integer]
        end
      end
    end
  end
end
