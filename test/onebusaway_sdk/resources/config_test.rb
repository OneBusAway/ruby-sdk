# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::ConfigTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.config.retrieve

    assert_pattern do
      response => OnebusawaySDK::Models::ConfigRetrieveResponse
    end
  end
end
