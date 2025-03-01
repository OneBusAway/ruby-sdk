# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::StopsForLocationTest < OnebusawaySDK::Test::ResourceTest
  def test_list_required_params
    response = @onebusaway_sdk.stops_for_location.list(lat: 0, lon: 0)

    assert_pattern do
      response => OnebusawaySDK::Models::StopsForLocationListResponse
    end
  end
end
