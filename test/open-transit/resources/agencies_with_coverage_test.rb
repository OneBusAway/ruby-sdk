# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::AgenciesWithCoverageTest < Minitest::Test
  def before_all
    @onebusaway_sdk = OpenTransit::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_list
    response = @onebusaway_sdk.agencies_with_coverage.list

    assert_pattern do
      response => OpenTransit::Models::AgenciesWithCoverageListResponse
    end
  end
end
