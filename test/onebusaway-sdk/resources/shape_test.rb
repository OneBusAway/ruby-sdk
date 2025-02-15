# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::ShapeTest < Minitest::Test
  def before_all
    @onebusaway_sdk = OnebusawaySDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @onebusaway_sdk.shape.retrieve("shapeID")

    assert_pattern do
      response => OnebusawaySDK::Models::ShapeRetrieveResponse
    end
  end
end
