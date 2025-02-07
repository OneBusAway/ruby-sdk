# frozen_string_literal: true

require_relative "../test_helper"

class Onebusaway::Test::Resources::RouteTest < Minitest::Test
  def before_all
    @onebusaway_sdk = Onebusaway::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @onebusaway_sdk.route.retrieve("routeID")

    assert_pattern do
      response => Onebusaway::Models::RouteRetrieveResponse
    end
  end
end
