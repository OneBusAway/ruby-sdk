# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::ScheduleForStopTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.schedule_for_stop.retrieve("stopID")

    assert_pattern do
      response => OnebusawaySDK::Models::ScheduleForStopRetrieveResponse
    end
  end
end
