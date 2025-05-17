# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::TripsForLocationTest < OpenTransit::Test::ResourceTest
  def test_list_required_params
    response = @onebusaway_sdk.trips_for_location.list(lat: 0, lat_span: 0, lon: 0, lon_span: 0)

    assert_pattern do
      response => OpenTransit::Models::TripsForLocationListResponse
    end
  end
end
