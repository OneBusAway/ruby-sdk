# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::AgenciesWithCoverageTest < OnebusawaySDK::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.agencies_with_coverage.list

    assert_pattern do
      response => OnebusawaySDK::Models::AgenciesWithCoverageListResponse
    end
  end
end
