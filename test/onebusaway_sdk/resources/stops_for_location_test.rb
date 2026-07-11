# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::StopsForLocationTest < OnebusawaySDK::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.stops_for_location.list

    assert_pattern do
      response => OnebusawaySDK::Models::StopsForLocationListResponse
    end
  end
end
