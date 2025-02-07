# frozen_string_literal: true

require_relative "../test_helper"

class Onebusaway::Test::Resources::CurrentTimeTest < Minitest::Test
  def before_all
    @onebusaway_sdk = Onebusaway::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @onebusaway_sdk.current_time.retrieve

    assert_pattern do
      response => Onebusaway::Models::CurrentTimeRetrieveResponse
    end
  end
end
