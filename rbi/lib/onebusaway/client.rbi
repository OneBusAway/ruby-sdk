# typed: strong

module Onebusaway
  class Client < Onebusaway::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Onebusaway::Resources::AgenciesWithCoverage) }
    attr_reader :agencies_with_coverage

    sig { returns(Onebusaway::Resources::Agency) }
    attr_reader :agency

    sig { returns(Onebusaway::Resources::VehiclesForAgency) }
    attr_reader :vehicles_for_agency

    sig { returns(Onebusaway::Resources::Config) }
    attr_reader :config

    sig { returns(Onebusaway::Resources::CurrentTime) }
    attr_reader :current_time

    sig { returns(Onebusaway::Resources::StopsForLocation) }
    attr_reader :stops_for_location

    sig { returns(Onebusaway::Resources::StopsForRoute) }
    attr_reader :stops_for_route

    sig { returns(Onebusaway::Resources::StopsForAgency) }
    attr_reader :stops_for_agency

    sig { returns(Onebusaway::Resources::Stop) }
    attr_reader :stop

    sig { returns(Onebusaway::Resources::StopIDsForAgency) }
    attr_reader :stop_ids_for_agency

    sig { returns(Onebusaway::Resources::ScheduleForStop) }
    attr_reader :schedule_for_stop

    sig { returns(Onebusaway::Resources::Route) }
    attr_reader :route

    sig { returns(Onebusaway::Resources::RouteIDsForAgency) }
    attr_reader :route_ids_for_agency

    sig { returns(Onebusaway::Resources::RoutesForLocation) }
    attr_reader :routes_for_location

    sig { returns(Onebusaway::Resources::RoutesForAgency) }
    attr_reader :routes_for_agency

    sig { returns(Onebusaway::Resources::ScheduleForRoute) }
    attr_reader :schedule_for_route

    sig { returns(Onebusaway::Resources::ArrivalAndDeparture) }
    attr_reader :arrival_and_departure

    sig { returns(Onebusaway::Resources::Trip) }
    attr_reader :trip

    sig { returns(Onebusaway::Resources::TripsForLocation) }
    attr_reader :trips_for_location

    sig { returns(Onebusaway::Resources::TripDetails) }
    attr_reader :trip_details

    sig { returns(Onebusaway::Resources::TripForVehicle) }
    attr_reader :trip_for_vehicle

    sig { returns(Onebusaway::Resources::TripsForRoute) }
    attr_reader :trips_for_route

    sig { returns(Onebusaway::Resources::ReportProblemWithStop) }
    attr_reader :report_problem_with_stop

    sig { returns(Onebusaway::Resources::ReportProblemWithTrip) }
    attr_reader :report_problem_with_trip

    sig { returns(Onebusaway::Resources::SearchForStop) }
    attr_reader :search_for_stop

    sig { returns(Onebusaway::Resources::SearchForRoute) }
    attr_reader :search_for_route

    sig { returns(Onebusaway::Resources::Block) }
    attr_reader :block

    sig { returns(Onebusaway::Resources::Shape) }
    attr_reader :shape

    sig { returns(T::Hash[String, String]) }
    private def auth_headers
    end

    sig do
      params(
        base_url: T.nilable(String),
        api_key: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).void
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
