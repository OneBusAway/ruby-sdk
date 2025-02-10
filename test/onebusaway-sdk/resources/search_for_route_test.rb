# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::SearchForRouteTest < Minitest::Test
  def before_all
    @onebusaway_sdk = OnebusawaySDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_list_required_params
    response = @onebusaway_sdk.search_for_route.list(input: "input")

    assert_pattern do
      response => OnebusawaySDK::Models::SearchForRouteListResponse
    end
  end
end
