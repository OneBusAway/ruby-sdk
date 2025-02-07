# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::ConfigTest < Minitest::Test
  def before_all
    @onebusaway_sdk = OpenTransit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @onebusaway_sdk.config.retrieve

    assert_pattern do
      response => OpenTransit::Models::ConfigRetrieveResponse
    end
  end
end
