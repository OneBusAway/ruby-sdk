# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::SearchForStopTest < OpenTransit::Test::ResourceTest
  def test_list_required_params
    response = @onebusaway_sdk.search_for_stop.list(input: "input")

    assert_pattern do
      response => OpenTransit::Models::SearchForStopListResponse
    end
  end
end
