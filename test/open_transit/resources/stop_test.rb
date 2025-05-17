# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::StopTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.stop.retrieve("stopID")

    assert_pattern do
      response => OpenTransit::Models::StopRetrieveResponse
    end
  end
end
