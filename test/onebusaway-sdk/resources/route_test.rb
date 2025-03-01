# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::RouteTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.route.retrieve("routeID")

    assert_pattern do
      response => OnebusawaySDK::Models::RouteRetrieveResponse
    end
  end
end
