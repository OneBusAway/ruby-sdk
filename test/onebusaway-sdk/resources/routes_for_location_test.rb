# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::RoutesForLocationTest < OnebusawaySDK::Test::ResourceTest
  def test_list_required_params
    response = @onebusaway_sdk.routes_for_location.list(lat: 0, lon: 0)

    assert_pattern do
      response => OnebusawaySDK::Models::RoutesForLocationListResponse
    end
  end
end
