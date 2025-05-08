# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::ReportProblemWithStopTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.report_problem_with_stop.retrieve("stopID")

    assert_pattern do
      response => OnebusawaySDK::ResponseWrapper
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
