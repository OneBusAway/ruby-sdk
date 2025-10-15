# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::ScheduleForRouteTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.schedule_for_route.retrieve("1_100223")

    assert_pattern do
      response => OnebusawaySDK::Models::ScheduleForRouteRetrieveResponse
    end
  end
end
