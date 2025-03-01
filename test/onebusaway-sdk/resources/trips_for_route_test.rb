# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::TripsForRouteTest < OnebusawaySDK::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.trips_for_route.list("routeID")

    assert_pattern do
      response => OnebusawaySDK::Models::TripsForRouteListResponse
    end
  end
end
