# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::TripsForRouteTest < OpenTransit::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.trips_for_route.list("routeID")

    assert_pattern do
      response => OpenTransit::Models::TripsForRouteListResponse
    end
  end
end
