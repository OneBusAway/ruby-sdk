# frozen_string_literal: true

module OnebusawaySDK
  class Client < OnebusawaySDK::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :api_key

    # @return [OnebusawaySDK::Resources::AgenciesWithCoverage]
    attr_reader :agencies_with_coverage

    # @return [OnebusawaySDK::Resources::Agency]
    attr_reader :agency

    # @return [OnebusawaySDK::Resources::VehiclesForAgency]
    attr_reader :vehicles_for_agency

    # @return [OnebusawaySDK::Resources::Config]
    attr_reader :config

    # @return [OnebusawaySDK::Resources::CurrentTime]
    attr_reader :current_time

    # @return [OnebusawaySDK::Resources::StopsForLocation]
    attr_reader :stops_for_location

    # @return [OnebusawaySDK::Resources::StopsForRoute]
    attr_reader :stops_for_route

    # @return [OnebusawaySDK::Resources::StopsForAgency]
    attr_reader :stops_for_agency

    # @return [OnebusawaySDK::Resources::Stop]
    attr_reader :stop

    # @return [OnebusawaySDK::Resources::StopIDsForAgency]
    attr_reader :stop_ids_for_agency

    # @return [OnebusawaySDK::Resources::ScheduleForStop]
    attr_reader :schedule_for_stop

    # @return [OnebusawaySDK::Resources::Route]
    attr_reader :route

    # @return [OnebusawaySDK::Resources::RouteIDsForAgency]
    attr_reader :route_ids_for_agency

    # @return [OnebusawaySDK::Resources::RoutesForLocation]
    attr_reader :routes_for_location

    # @return [OnebusawaySDK::Resources::RoutesForAgency]
    attr_reader :routes_for_agency

    # @return [OnebusawaySDK::Resources::ScheduleForRoute]
    attr_reader :schedule_for_route

    # @return [OnebusawaySDK::Resources::ArrivalAndDeparture]
    attr_reader :arrival_and_departure

    # @return [OnebusawaySDK::Resources::Trip]
    attr_reader :trip

    # @return [OnebusawaySDK::Resources::TripsForLocation]
    attr_reader :trips_for_location

    # @return [OnebusawaySDK::Resources::TripDetails]
    attr_reader :trip_details

    # @return [OnebusawaySDK::Resources::TripForVehicle]
    attr_reader :trip_for_vehicle

    # @return [OnebusawaySDK::Resources::TripsForRoute]
    attr_reader :trips_for_route

    # @return [OnebusawaySDK::Resources::ReportProblemWithStop]
    attr_reader :report_problem_with_stop

    # @return [OnebusawaySDK::Resources::ReportProblemWithTrip]
    attr_reader :report_problem_with_trip

    # @return [OnebusawaySDK::Resources::SearchForStop]
    attr_reader :search_for_stop

    # @return [OnebusawaySDK::Resources::SearchForRoute]
    attr_reader :search_for_route

    # @return [OnebusawaySDK::Resources::Block]
    attr_reader :block

    # @return [OnebusawaySDK::Resources::Shape]
    attr_reader :shape

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_query
      {"key" => @api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["ONEBUSAWAY_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["ONEBUSAWAY_SDK_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["ONEBUSAWAY_API_KEY"],
      base_url: ENV["ONEBUSAWAY_SDK_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.pugetsound.onebusaway.org"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"ONEBUSAWAY_API_KEY\"")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @agencies_with_coverage = OnebusawaySDK::Resources::AgenciesWithCoverage.new(client: self)
      @agency = OnebusawaySDK::Resources::Agency.new(client: self)
      @vehicles_for_agency = OnebusawaySDK::Resources::VehiclesForAgency.new(client: self)
      @config = OnebusawaySDK::Resources::Config.new(client: self)
      @current_time = OnebusawaySDK::Resources::CurrentTime.new(client: self)
      @stops_for_location = OnebusawaySDK::Resources::StopsForLocation.new(client: self)
      @stops_for_route = OnebusawaySDK::Resources::StopsForRoute.new(client: self)
      @stops_for_agency = OnebusawaySDK::Resources::StopsForAgency.new(client: self)
      @stop = OnebusawaySDK::Resources::Stop.new(client: self)
      @stop_ids_for_agency = OnebusawaySDK::Resources::StopIDsForAgency.new(client: self)
      @schedule_for_stop = OnebusawaySDK::Resources::ScheduleForStop.new(client: self)
      @route = OnebusawaySDK::Resources::Route.new(client: self)
      @route_ids_for_agency = OnebusawaySDK::Resources::RouteIDsForAgency.new(client: self)
      @routes_for_location = OnebusawaySDK::Resources::RoutesForLocation.new(client: self)
      @routes_for_agency = OnebusawaySDK::Resources::RoutesForAgency.new(client: self)
      @schedule_for_route = OnebusawaySDK::Resources::ScheduleForRoute.new(client: self)
      @arrival_and_departure = OnebusawaySDK::Resources::ArrivalAndDeparture.new(client: self)
      @trip = OnebusawaySDK::Resources::Trip.new(client: self)
      @trips_for_location = OnebusawaySDK::Resources::TripsForLocation.new(client: self)
      @trip_details = OnebusawaySDK::Resources::TripDetails.new(client: self)
      @trip_for_vehicle = OnebusawaySDK::Resources::TripForVehicle.new(client: self)
      @trips_for_route = OnebusawaySDK::Resources::TripsForRoute.new(client: self)
      @report_problem_with_stop = OnebusawaySDK::Resources::ReportProblemWithStop.new(client: self)
      @report_problem_with_trip = OnebusawaySDK::Resources::ReportProblemWithTrip.new(client: self)
      @search_for_stop = OnebusawaySDK::Resources::SearchForStop.new(client: self)
      @search_for_route = OnebusawaySDK::Resources::SearchForRoute.new(client: self)
      @block = OnebusawaySDK::Resources::Block.new(client: self)
      @shape = OnebusawaySDK::Resources::Shape.new(client: self)
    end
  end
end
