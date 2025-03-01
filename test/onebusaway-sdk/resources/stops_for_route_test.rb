# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::StopsForRouteTest < OnebusawaySDK::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.stops_for_route.list("routeID")

    assert_pattern do
      response => OnebusawaySDK::Models::StopsForRouteListResponse
    end
  end
end
