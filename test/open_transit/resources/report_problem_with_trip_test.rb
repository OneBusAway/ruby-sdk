# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::ReportProblemWithTripTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.report_problem_with_trip.retrieve("tripID")

    assert_pattern do
      response => OpenTransit::ResponseWrapper
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
