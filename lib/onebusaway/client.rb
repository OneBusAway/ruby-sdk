# frozen_string_literal: true

module Onebusaway
  class Client < Onebusaway::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # Client option
    # @return [String]
    attr_reader :api_key

    # @return [Onebusaway::Resources::AgenciesWithCoverage]
    attr_reader :agencies_with_coverage

    # @return [Onebusaway::Resources::Agency]
    attr_reader :agency

    # @return [Onebusaway::Resources::VehiclesForAgency]
    attr_reader :vehicles_for_agency

    # @return [Onebusaway::Resources::Config]
    attr_reader :config

    # @return [Onebusaway::Resources::CurrentTime]
    attr_reader :current_time

    # @return [Onebusaway::Resources::StopsForLocation]
    attr_reader :stops_for_location

    # @return [Onebusaway::Resources::StopsForRoute]
    attr_reader :stops_for_route

    # @return [Onebusaway::Resources::StopsForAgency]
    attr_reader :stops_for_agency

    # @return [Onebusaway::Resources::Stop]
    attr_reader :stop

    # @return [Onebusaway::Resources::StopIDsForAgency]
    attr_reader :stop_ids_for_agency

    # @return [Onebusaway::Resources::ScheduleForStop]
    attr_reader :schedule_for_stop

    # @return [Onebusaway::Resources::Route]
    attr_reader :route

    # @return [Onebusaway::Resources::RouteIDsForAgency]
    attr_reader :route_ids_for_agency

    # @return [Onebusaway::Resources::RoutesForLocation]
    attr_reader :routes_for_location

    # @return [Onebusaway::Resources::RoutesForAgency]
    attr_reader :routes_for_agency

    # @return [Onebusaway::Resources::ScheduleForRoute]
    attr_reader :schedule_for_route

    # @return [Onebusaway::Resources::ArrivalAndDeparture]
    attr_reader :arrival_and_departure

    # @return [Onebusaway::Resources::Trip]
    attr_reader :trip

    # @return [Onebusaway::Resources::TripsForLocation]
    attr_reader :trips_for_location

    # @return [Onebusaway::Resources::TripDetails]
    attr_reader :trip_details

    # @return [Onebusaway::Resources::TripForVehicle]
    attr_reader :trip_for_vehicle

    # @return [Onebusaway::Resources::TripsForRoute]
    attr_reader :trips_for_route

    # @return [Onebusaway::Resources::ReportProblemWithStop]
    attr_reader :report_problem_with_stop

    # @return [Onebusaway::Resources::ReportProblemWithTrip]
    attr_reader :report_problem_with_trip

    # @return [Onebusaway::Resources::SearchForStop]
    attr_reader :search_for_stop

    # @return [Onebusaway::Resources::SearchForRoute]
    attr_reader :search_for_route

    # @return [Onebusaway::Resources::Block]
    attr_reader :block

    # @return [Onebusaway::Resources::Shape]
    attr_reader :shape

    # @private
    #
    # @return [Hash{String=>String}]
    #
    private def auth_headers
      raise NotImplementedError
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    #
    # @param api_key [String, nil] Defaults to `ENV["ONEBUSAWAY_API_KEY"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    #
    def initialize(
      base_url: nil,
      api_key: ENV["ONEBUSAWAY_API_KEY"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.pugetsound.onebusaway.org"

      if api_key.nil?
        raise ArgumentError.new("api_key is required")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @agencies_with_coverage = Onebusaway::Resources::AgenciesWithCoverage.new(client: self)
      @agency = Onebusaway::Resources::Agency.new(client: self)
      @vehicles_for_agency = Onebusaway::Resources::VehiclesForAgency.new(client: self)
      @config = Onebusaway::Resources::Config.new(client: self)
      @current_time = Onebusaway::Resources::CurrentTime.new(client: self)
      @stops_for_location = Onebusaway::Resources::StopsForLocation.new(client: self)
      @stops_for_route = Onebusaway::Resources::StopsForRoute.new(client: self)
      @stops_for_agency = Onebusaway::Resources::StopsForAgency.new(client: self)
      @stop = Onebusaway::Resources::Stop.new(client: self)
      @stop_ids_for_agency = Onebusaway::Resources::StopIDsForAgency.new(client: self)
      @schedule_for_stop = Onebusaway::Resources::ScheduleForStop.new(client: self)
      @route = Onebusaway::Resources::Route.new(client: self)
      @route_ids_for_agency = Onebusaway::Resources::RouteIDsForAgency.new(client: self)
      @routes_for_location = Onebusaway::Resources::RoutesForLocation.new(client: self)
      @routes_for_agency = Onebusaway::Resources::RoutesForAgency.new(client: self)
      @schedule_for_route = Onebusaway::Resources::ScheduleForRoute.new(client: self)
      @arrival_and_departure = Onebusaway::Resources::ArrivalAndDeparture.new(client: self)
      @trip = Onebusaway::Resources::Trip.new(client: self)
      @trips_for_location = Onebusaway::Resources::TripsForLocation.new(client: self)
      @trip_details = Onebusaway::Resources::TripDetails.new(client: self)
      @trip_for_vehicle = Onebusaway::Resources::TripForVehicle.new(client: self)
      @trips_for_route = Onebusaway::Resources::TripsForRoute.new(client: self)
      @report_problem_with_stop = Onebusaway::Resources::ReportProblemWithStop.new(client: self)
      @report_problem_with_trip = Onebusaway::Resources::ReportProblemWithTrip.new(client: self)
      @search_for_stop = Onebusaway::Resources::SearchForStop.new(client: self)
      @search_for_route = Onebusaway::Resources::SearchForRoute.new(client: self)
      @block = Onebusaway::Resources::Block.new(client: self)
      @shape = Onebusaway::Resources::Shape.new(client: self)
    end
  end
end
