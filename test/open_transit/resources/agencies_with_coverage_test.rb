# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::AgenciesWithCoverageTest < OpenTransit::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.agencies_with_coverage.list

    assert_pattern do
      response => OpenTransit::Models::AgenciesWithCoverageListResponse
    end
  end
end
