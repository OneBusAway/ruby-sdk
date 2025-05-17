# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::StopsForRouteTest < OpenTransit::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.stops_for_route.list("routeID")

    assert_pattern do
      response => OpenTransit::Models::StopsForRouteListResponse
    end
  end
end
