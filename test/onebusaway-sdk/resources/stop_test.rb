# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::StopTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.stop.retrieve("stopID")

    assert_pattern do
      response => OnebusawaySDK::Models::StopRetrieveResponse
    end
  end
end
