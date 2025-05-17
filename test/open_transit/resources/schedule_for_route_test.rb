# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::ScheduleForRouteTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.schedule_for_route.retrieve("routeID")

    assert_pattern do
      response => OpenTransit::Models::ScheduleForRouteRetrieveResponse
    end
  end
end
