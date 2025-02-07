# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::TripsForRouteTest < Minitest::Test
  def before_all
    @onebusaway_sdk = OpenTransit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_list
    response = @onebusaway_sdk.trips_for_route.list("routeID")

    assert_pattern do
      response => OpenTransit::Models::TripsForRouteListResponse
    end
  end
end
