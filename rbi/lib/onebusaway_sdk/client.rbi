# typed: strong

module OnebusawaySDK
  class Client < OnebusawaySDK::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(OnebusawaySDK::Resources::AgenciesWithCoverage) }
    attr_reader :agencies_with_coverage

    sig { returns(OnebusawaySDK::Resources::Agency) }
    attr_reader :agency

    sig { returns(OnebusawaySDK::Resources::VehiclesForAgency) }
    attr_reader :vehicles_for_agency

    sig { returns(OnebusawaySDK::Resources::Config) }
    attr_reader :config

    sig { returns(OnebusawaySDK::Resources::CurrentTime) }
    attr_reader :current_time

    sig { returns(OnebusawaySDK::Resources::StopsForLocation) }
    attr_reader :stops_for_location

    sig { returns(OnebusawaySDK::Resources::StopsForRoute) }
    attr_reader :stops_for_route

    sig { returns(OnebusawaySDK::Resources::StopsForAgency) }
    attr_reader :stops_for_agency

    sig { returns(OnebusawaySDK::Resources::Stop) }
    attr_reader :stop

    sig { returns(OnebusawaySDK::Resources::StopIDsForAgency) }
    attr_reader :stop_ids_for_agency

    sig { returns(OnebusawaySDK::Resources::ScheduleForStop) }
    attr_reader :schedule_for_stop

    sig { returns(OnebusawaySDK::Resources::Route) }
    attr_reader :route

    sig { returns(OnebusawaySDK::Resources::RouteIDsForAgency) }
    attr_reader :route_ids_for_agency

    sig { returns(OnebusawaySDK::Resources::RoutesForLocation) }
    attr_reader :routes_for_location

    sig { returns(OnebusawaySDK::Resources::RoutesForAgency) }
    attr_reader :routes_for_agency

    sig { returns(OnebusawaySDK::Resources::ScheduleForRoute) }
    attr_reader :schedule_for_route

    sig { returns(OnebusawaySDK::Resources::ArrivalAndDeparture) }
    attr_reader :arrival_and_departure

    sig { returns(OnebusawaySDK::Resources::Trip) }
    attr_reader :trip

    sig { returns(OnebusawaySDK::Resources::TripsForLocation) }
    attr_reader :trips_for_location

    sig { returns(OnebusawaySDK::Resources::TripDetails) }
    attr_reader :trip_details

    sig { returns(OnebusawaySDK::Resources::TripForVehicle) }
    attr_reader :trip_for_vehicle

    sig { returns(OnebusawaySDK::Resources::TripsForRoute) }
    attr_reader :trips_for_route

    sig { returns(OnebusawaySDK::Resources::ReportProblemWithStop) }
    attr_reader :report_problem_with_stop

    sig { returns(OnebusawaySDK::Resources::ReportProblemWithTrip) }
    attr_reader :report_problem_with_trip

    sig { returns(OnebusawaySDK::Resources::SearchForStop) }
    attr_reader :search_for_stop

    sig { returns(OnebusawaySDK::Resources::SearchForRoute) }
    attr_reader :search_for_route

    sig { returns(OnebusawaySDK::Resources::Block) }
    attr_reader :block

    sig { returns(OnebusawaySDK::Resources::Shape) }
    attr_reader :shape

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_query
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["ONEBUSAWAY_API_KEY"]`
      api_key: ENV["ONEBUSAWAY_API_KEY"],
      # Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
      base_url: nil,
      # Max number of retries to attempt after a failed retryable request.
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
