# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::ShapeTest < Minitest::Test
  def before_all
    @onebusaway_sdk = OpenTransit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @onebusaway_sdk.shape.retrieve("shapeID")

    assert_pattern do
      response => OpenTransit::Models::ShapeRetrieveResponse
    end
  end
end
