# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::RoutesForAgencyTest < OnebusawaySDK::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.routes_for_agency.list("40")

    assert_pattern do
      response => OnebusawaySDK::Models::RoutesForAgencyListResponse
    end
  end
end
