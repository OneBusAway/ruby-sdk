# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::TripsForLocationTest < OnebusawaySDK::Test::ResourceTest
  def test_list_required_params
    response = @onebusaway_sdk.trips_for_location.list(lat: 0, lat_span: 0, lon: 0, lon_span: 0)

    assert_pattern do
      response => OnebusawaySDK::Models::TripsForLocationListResponse
    end
  end
end
