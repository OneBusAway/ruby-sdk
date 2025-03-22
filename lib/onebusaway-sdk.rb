# frozen_string_literal: true

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) && caller_locations.any? { _1.path.end_with?("tapioca/cli.rb") }
  Warning.warn(
    <<~WARN
      \n
      ⚠️ skipped loading of "onebusaway-sdk" gem under `tapioca`.

      This message is normal and expected if you are running a `tapioca` command, and does not impact `.rbi` generation.
      \n
    WARN
  )
  return
end

# Standard libraries.
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"

# Gems.
require "connection_pool"

# Package files.
require_relative "onebusaway-sdk/version"
require_relative "onebusaway-sdk/util"
require_relative "onebusaway-sdk/extern"
require_relative "onebusaway-sdk/base_model"
require_relative "onebusaway-sdk/base_page"
require_relative "onebusaway-sdk/request_options"
require_relative "onebusaway-sdk/errors"
require_relative "onebusaway-sdk/base_client"
require_relative "onebusaway-sdk/pooled_net_requester"
require_relative "onebusaway-sdk/client"
require_relative "onebusaway-sdk/models/response_wrapper"
require_relative "onebusaway-sdk/models/agencies_with_coverage_list_params"
require_relative "onebusaway-sdk/models/agencies_with_coverage_list_response"
require_relative "onebusaway-sdk/models/agency_retrieve_params"
require_relative "onebusaway-sdk/models/agency_retrieve_response"
require_relative "onebusaway-sdk/models/arrival_and_departure_list_params"
require_relative "onebusaway-sdk/models/arrival_and_departure_list_response"
require_relative "onebusaway-sdk/models/arrival_and_departure_retrieve_params"
require_relative "onebusaway-sdk/models/arrival_and_departure_retrieve_response"
require_relative "onebusaway-sdk/models/block_retrieve_params"
require_relative "onebusaway-sdk/models/block_retrieve_response"
require_relative "onebusaway-sdk/models/config_retrieve_params"
require_relative "onebusaway-sdk/models/config_retrieve_response"
require_relative "onebusaway-sdk/models/current_time_retrieve_params"
require_relative "onebusaway-sdk/models/current_time_retrieve_response"
require_relative "onebusaway-sdk/models/references"
require_relative "onebusaway-sdk/models/report_problem_with_stop_retrieve_params"
require_relative "onebusaway-sdk/models/report_problem_with_trip_retrieve_params"
require_relative "onebusaway-sdk/models/route_ids_for_agency_list_params"
require_relative "onebusaway-sdk/models/route_ids_for_agency_list_response"
require_relative "onebusaway-sdk/models/route_retrieve_params"
require_relative "onebusaway-sdk/models/route_retrieve_response"
require_relative "onebusaway-sdk/models/routes_for_agency_list_params"
require_relative "onebusaway-sdk/models/routes_for_agency_list_response"
require_relative "onebusaway-sdk/models/routes_for_location_list_params"
require_relative "onebusaway-sdk/models/routes_for_location_list_response"
require_relative "onebusaway-sdk/models/schedule_for_route_retrieve_params"
require_relative "onebusaway-sdk/models/schedule_for_route_retrieve_response"
require_relative "onebusaway-sdk/models/schedule_for_stop_retrieve_params"
require_relative "onebusaway-sdk/models/schedule_for_stop_retrieve_response"
require_relative "onebusaway-sdk/models/search_for_route_list_params"
require_relative "onebusaway-sdk/models/search_for_route_list_response"
require_relative "onebusaway-sdk/models/search_for_stop_list_params"
require_relative "onebusaway-sdk/models/search_for_stop_list_response"
require_relative "onebusaway-sdk/models/shape_retrieve_params"
require_relative "onebusaway-sdk/models/shape_retrieve_response"
require_relative "onebusaway-sdk/models/stop_ids_for_agency_list_params"
require_relative "onebusaway-sdk/models/stop_ids_for_agency_list_response"
require_relative "onebusaway-sdk/models/stop_retrieve_params"
require_relative "onebusaway-sdk/models/stop_retrieve_response"
require_relative "onebusaway-sdk/models/stops_for_agency_list_params"
require_relative "onebusaway-sdk/models/stops_for_agency_list_response"
require_relative "onebusaway-sdk/models/stops_for_location_list_params"
require_relative "onebusaway-sdk/models/stops_for_location_list_response"
require_relative "onebusaway-sdk/models/stops_for_route_list_params"
require_relative "onebusaway-sdk/models/stops_for_route_list_response"
require_relative "onebusaway-sdk/models/trip_detail_retrieve_params"
require_relative "onebusaway-sdk/models/trip_detail_retrieve_response"
require_relative "onebusaway-sdk/models/trip_for_vehicle_retrieve_params"
require_relative "onebusaway-sdk/models/trip_for_vehicle_retrieve_response"
require_relative "onebusaway-sdk/models/trip_retrieve_params"
require_relative "onebusaway-sdk/models/trip_retrieve_response"
require_relative "onebusaway-sdk/models/trips_for_location_list_params"
require_relative "onebusaway-sdk/models/trips_for_location_list_response"
require_relative "onebusaway-sdk/models/trips_for_route_list_params"
require_relative "onebusaway-sdk/models/trips_for_route_list_response"
require_relative "onebusaway-sdk/models/vehicles_for_agency_list_params"
require_relative "onebusaway-sdk/models/vehicles_for_agency_list_response"
require_relative "onebusaway-sdk/resources/agencies_with_coverage"
require_relative "onebusaway-sdk/resources/agency"
require_relative "onebusaway-sdk/resources/arrival_and_departure"
require_relative "onebusaway-sdk/resources/block"
require_relative "onebusaway-sdk/resources/config"
require_relative "onebusaway-sdk/resources/current_time"
require_relative "onebusaway-sdk/resources/report_problem_with_stop"
require_relative "onebusaway-sdk/resources/report_problem_with_trip"
require_relative "onebusaway-sdk/resources/route"
require_relative "onebusaway-sdk/resources/route_ids_for_agency"
require_relative "onebusaway-sdk/resources/routes_for_agency"
require_relative "onebusaway-sdk/resources/routes_for_location"
require_relative "onebusaway-sdk/resources/schedule_for_route"
require_relative "onebusaway-sdk/resources/schedule_for_stop"
require_relative "onebusaway-sdk/resources/search_for_route"
require_relative "onebusaway-sdk/resources/search_for_stop"
require_relative "onebusaway-sdk/resources/shape"
require_relative "onebusaway-sdk/resources/stop"
require_relative "onebusaway-sdk/resources/stop_ids_for_agency"
require_relative "onebusaway-sdk/resources/stops_for_agency"
require_relative "onebusaway-sdk/resources/stops_for_location"
require_relative "onebusaway-sdk/resources/stops_for_route"
require_relative "onebusaway-sdk/resources/trip"
require_relative "onebusaway-sdk/resources/trip_details"
require_relative "onebusaway-sdk/resources/trip_for_vehicle"
require_relative "onebusaway-sdk/resources/trips_for_location"
require_relative "onebusaway-sdk/resources/trips_for_route"
require_relative "onebusaway-sdk/resources/vehicles_for_agency"
