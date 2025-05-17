# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::ScheduleForStopTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.schedule_for_stop.retrieve("stopID")

    assert_pattern do
      response => OpenTransit::Models::ScheduleForStopRetrieveResponse
    end
  end
end
