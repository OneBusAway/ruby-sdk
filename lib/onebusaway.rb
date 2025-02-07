# frozen_string_literal: true

# Standard libraries.
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"

# Gems.
require "connection_pool"

# Package files.
require_relative "onebusaway/pooled_net_requester"
require_relative "onebusaway/version"
require_relative "onebusaway/util"
require_relative "onebusaway/extern"
require_relative "onebusaway/base_model"
require_relative "onebusaway/base_page"
require_relative "onebusaway/request_options"
require_relative "onebusaway/base_client"
require_relative "onebusaway/errors"
require_relative "onebusaway/models/references"
require_relative "onebusaway/models/response_wrapper"
require_relative "onebusaway/models/agencies_with_coverage_list_response"
require_relative "onebusaway/models/agency_retrieve_response"
require_relative "onebusaway/models/vehicles_for_agency_list_response"
require_relative "onebusaway/models/config_retrieve_response"
require_relative "onebusaway/models/current_time_retrieve_response"
require_relative "onebusaway/models/stops_for_location_list_response"
require_relative "onebusaway/models/stops_for_route_list_response"
require_relative "onebusaway/models/stops_for_agency_list_response"
require_relative "onebusaway/models/stop_retrieve_response"
require_relative "onebusaway/models/stop_ids_for_agency_list_response"
require_relative "onebusaway/models/schedule_for_stop_retrieve_response"
require_relative "onebusaway/models/route_retrieve_response"
require_relative "onebusaway/models/route_ids_for_agency_list_response"
require_relative "onebusaway/models/routes_for_location_list_response"
require_relative "onebusaway/models/routes_for_agency_list_response"
require_relative "onebusaway/models/schedule_for_route_retrieve_response"
require_relative "onebusaway/models/arrival_and_departure_retrieve_response"
require_relative "onebusaway/models/arrival_and_departure_list_response"
require_relative "onebusaway/models/trip_retrieve_response"
require_relative "onebusaway/models/trips_for_location_list_response"
require_relative "onebusaway/models/trip_detail_retrieve_response"
require_relative "onebusaway/models/trip_for_vehicle_retrieve_response"
require_relative "onebusaway/models/trips_for_route_list_response"
require_relative "onebusaway/models/search_for_stop_list_response"
require_relative "onebusaway/models/search_for_route_list_response"
require_relative "onebusaway/models/block_retrieve_response"
require_relative "onebusaway/models/shape_retrieve_response"
require_relative "onebusaway/models/agencies_with_coverage_list_params"
require_relative "onebusaway/models/agency_retrieve_params"
require_relative "onebusaway/models/vehicles_for_agency_list_params"
require_relative "onebusaway/models/config_retrieve_params"
require_relative "onebusaway/models/current_time_retrieve_params"
require_relative "onebusaway/models/stops_for_location_list_params"
require_relative "onebusaway/models/stops_for_route_list_params"
require_relative "onebusaway/models/stops_for_agency_list_params"
require_relative "onebusaway/models/stop_retrieve_params"
require_relative "onebusaway/models/stop_ids_for_agency_list_params"
require_relative "onebusaway/models/schedule_for_stop_retrieve_params"
require_relative "onebusaway/models/route_retrieve_params"
require_relative "onebusaway/models/route_ids_for_agency_list_params"
require_relative "onebusaway/models/routes_for_location_list_params"
require_relative "onebusaway/models/routes_for_agency_list_params"
require_relative "onebusaway/models/schedule_for_route_retrieve_params"
require_relative "onebusaway/models/arrival_and_departure_retrieve_params"
require_relative "onebusaway/models/arrival_and_departure_list_params"
require_relative "onebusaway/models/trip_retrieve_params"
require_relative "onebusaway/models/trips_for_location_list_params"
require_relative "onebusaway/models/trip_detail_retrieve_params"
require_relative "onebusaway/models/trip_for_vehicle_retrieve_params"
require_relative "onebusaway/models/trips_for_route_list_params"
require_relative "onebusaway/models/report_problem_with_stop_retrieve_params"
require_relative "onebusaway/models/report_problem_with_trip_retrieve_params"
require_relative "onebusaway/models/search_for_stop_list_params"
require_relative "onebusaway/models/search_for_route_list_params"
require_relative "onebusaway/models/block_retrieve_params"
require_relative "onebusaway/models/shape_retrieve_params"
require_relative "onebusaway/client"
require_relative "onebusaway/resources/agencies_with_coverage"
require_relative "onebusaway/resources/agency"
require_relative "onebusaway/resources/vehicles_for_agency"
require_relative "onebusaway/resources/config"
require_relative "onebusaway/resources/current_time"
require_relative "onebusaway/resources/stops_for_location"
require_relative "onebusaway/resources/stops_for_route"
require_relative "onebusaway/resources/stops_for_agency"
require_relative "onebusaway/resources/stop"
require_relative "onebusaway/resources/stop_ids_for_agency"
require_relative "onebusaway/resources/schedule_for_stop"
require_relative "onebusaway/resources/route"
require_relative "onebusaway/resources/route_ids_for_agency"
require_relative "onebusaway/resources/routes_for_location"
require_relative "onebusaway/resources/routes_for_agency"
require_relative "onebusaway/resources/schedule_for_route"
require_relative "onebusaway/resources/arrival_and_departure"
require_relative "onebusaway/resources/trip"
require_relative "onebusaway/resources/trips_for_location"
require_relative "onebusaway/resources/trip_details"
require_relative "onebusaway/resources/trip_for_vehicle"
require_relative "onebusaway/resources/trips_for_route"
require_relative "onebusaway/resources/report_problem_with_stop"
require_relative "onebusaway/resources/report_problem_with_trip"
require_relative "onebusaway/resources/search_for_stop"
require_relative "onebusaway/resources/search_for_route"
require_relative "onebusaway/resources/block"
require_relative "onebusaway/resources/shape"
