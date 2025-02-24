# typed: strong

module OnebusawaySDK
  class Client < OnebusawaySDK::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    def api_key
    end

    sig { returns(OnebusawaySDK::Resources::AgenciesWithCoverage) }
    def agencies_with_coverage
    end

    sig { returns(OnebusawaySDK::Resources::Agency) }
    def agency
    end

    sig { returns(OnebusawaySDK::Resources::VehiclesForAgency) }
    def vehicles_for_agency
    end

    sig { returns(OnebusawaySDK::Resources::Config) }
    def config
    end

    sig { returns(OnebusawaySDK::Resources::CurrentTime) }
    def current_time
    end

    sig { returns(OnebusawaySDK::Resources::StopsForLocation) }
    def stops_for_location
    end

    sig { returns(OnebusawaySDK::Resources::StopsForRoute) }
    def stops_for_route
    end

    sig { returns(OnebusawaySDK::Resources::StopsForAgency) }
    def stops_for_agency
    end

    sig { returns(OnebusawaySDK::Resources::Stop) }
    def stop
    end

    sig { returns(OnebusawaySDK::Resources::StopIDsForAgency) }
    def stop_ids_for_agency
    end

    sig { returns(OnebusawaySDK::Resources::ScheduleForStop) }
    def schedule_for_stop
    end

    sig { returns(OnebusawaySDK::Resources::Route) }
    def route
    end

    sig { returns(OnebusawaySDK::Resources::RouteIDsForAgency) }
    def route_ids_for_agency
    end

    sig { returns(OnebusawaySDK::Resources::RoutesForLocation) }
    def routes_for_location
    end

    sig { returns(OnebusawaySDK::Resources::RoutesForAgency) }
    def routes_for_agency
    end

    sig { returns(OnebusawaySDK::Resources::ScheduleForRoute) }
    def schedule_for_route
    end

    sig { returns(OnebusawaySDK::Resources::ArrivalAndDeparture) }
    def arrival_and_departure
    end

    sig { returns(OnebusawaySDK::Resources::Trip) }
    def trip
    end

    sig { returns(OnebusawaySDK::Resources::TripsForLocation) }
    def trips_for_location
    end

    sig { returns(OnebusawaySDK::Resources::TripDetails) }
    def trip_details
    end

    sig { returns(OnebusawaySDK::Resources::TripForVehicle) }
    def trip_for_vehicle
    end

    sig { returns(OnebusawaySDK::Resources::TripsForRoute) }
    def trips_for_route
    end

    sig { returns(OnebusawaySDK::Resources::ReportProblemWithStop) }
    def report_problem_with_stop
    end

    sig { returns(OnebusawaySDK::Resources::ReportProblemWithTrip) }
    def report_problem_with_trip
    end

    sig { returns(OnebusawaySDK::Resources::SearchForStop) }
    def search_for_stop
    end

    sig { returns(OnebusawaySDK::Resources::SearchForRoute) }
    def search_for_route
    end

    sig { returns(OnebusawaySDK::Resources::Block) }
    def block
    end

    sig { returns(OnebusawaySDK::Resources::Shape) }
    def shape
    end

    sig { override.returns(T::Hash[String, String]) }
    private def auth_query
    end

    sig do
      params(
        base_url: T.nilable(String),
        api_key: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .void
    end
    def initialize(
      base_url: nil,
      api_key: ENV["ONEBUSAWAY_API_KEY"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
