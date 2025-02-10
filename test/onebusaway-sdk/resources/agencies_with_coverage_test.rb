# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::AgenciesWithCoverageTest < Minitest::Test
  def before_all
    @onebusaway_sdk = OnebusawaySDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_list
    response = @onebusaway_sdk.agencies_with_coverage.list

    assert_pattern do
      response => OnebusawaySDK::Models::AgenciesWithCoverageListResponse
    end
  end
end
