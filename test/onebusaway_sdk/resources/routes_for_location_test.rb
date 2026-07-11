# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::RoutesForLocationTest < OnebusawaySDK::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.routes_for_location.list

    assert_pattern do
      response => OnebusawaySDK::Models::RoutesForLocationListResponse
    end
  end
end
