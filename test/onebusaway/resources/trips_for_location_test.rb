# frozen_string_literal: true

require_relative "../test_helper"

class Onebusaway::Test::Resources::TripsForLocationTest < Minitest::Test
  def before_all
    @onebusaway_sdk = Onebusaway::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_list_required_params
    response = @onebusaway_sdk.trips_for_location.list(lat: 0, lat_span: 0, lon: 0, lon_span: 0)

    assert_pattern do
      response => Onebusaway::Models::TripsForLocationListResponse
    end
  end
end
