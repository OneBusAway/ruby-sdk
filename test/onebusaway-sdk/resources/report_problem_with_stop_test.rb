# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::ReportProblemWithStopTest < Minitest::Test
  def before_all
    @onebusaway_sdk = OnebusawaySDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve
    response = @onebusaway_sdk.report_problem_with_stop.retrieve("stopID")

    assert_pattern do
      response => OnebusawaySDK::Models::ResponseWrapper
    end

    assert_pattern do
      response => {
        code: Integer,
        current_time: Integer,
        text: String,
        version: Integer
      }
    end
  end
end
