# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::SharedTest < Minitest::Test
  def before_all
    @onebusaway_sdk = OnebusawaySDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end
end
