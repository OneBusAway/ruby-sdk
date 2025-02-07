# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::StopTest < Minitest::Test
  def before_all
    @onebusaway_sdk = OpenTransit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @onebusaway_sdk.stop.retrieve("stopID")

    assert_pattern do
      response => OpenTransit::Models::StopRetrieveResponse
    end
  end
end
