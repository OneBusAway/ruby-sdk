# frozen_string_literal: true

module Onebusaway
  module Resources
    class ArrivalAndDeparture
      # arrival-and-departure-for-stop
      #
      # @param stop_id [String]
      #
      # @param params [Onebusaway::Models::ArrivalAndDepartureRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :service_date
      #
      #   @option params [String] :trip_id
      #
      #   @option params [Integer] :stop_sequence
      #
      #   @option params [Integer] :time
      #
      #   @option params [String] :vehicle_id
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::ArrivalAndDepartureRetrieveResponse]
      #
      def retrieve(stop_id, params)
        parsed, options = Onebusaway::Models::ArrivalAndDepartureRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/arrival-and-departure-for-stop/%0s.json", stop_id],
          query: parsed,
          model: Onebusaway::Models::ArrivalAndDepartureRetrieveResponse,
          options: options
        )
      end

      # arrivals-and-departures-for-stop
      #
      # @param stop_id [String]
      #
      # @param params [Onebusaway::Models::ArrivalAndDepartureListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :minutes_after Include vehicles arriving or departing in the next n minutes.
      #
      #   @option params [Integer] :minutes_before Include vehicles having arrived or departed in the previous n minutes.
      #
      #   @option params [Time] :time The specific time for querying the system status.
      #
      #   @option params [Onebusaway::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Onebusaway::Models::ArrivalAndDepartureListResponse]
      #
      def list(stop_id, params = {})
        parsed, options = Onebusaway::Models::ArrivalAndDepartureListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["api/where/arrivals-and-departures-for-stop/%0s.json", stop_id],
          query: parsed,
          model: Onebusaway::Models::ArrivalAndDepartureListResponse,
          options: options
        )
      end

      # @param client [Onebusaway::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
