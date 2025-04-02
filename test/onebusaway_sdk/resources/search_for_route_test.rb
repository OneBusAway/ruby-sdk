# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::SearchForRouteTest < OnebusawaySDK::Test::ResourceTest
  def test_list_required_params
    response = @onebusaway_sdk.search_for_route.list(input: "input")

    assert_pattern do
      response => OnebusawaySDK::Models::SearchForRouteListResponse
    end
  end
end
