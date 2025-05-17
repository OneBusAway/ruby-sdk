# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::CurrentTimeTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.current_time.retrieve

    assert_pattern do
      response => OnebusawaySDK::Models::CurrentTimeRetrieveResponse
    end
  end
end
