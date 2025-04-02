# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::StopsForAgencyTest < OnebusawaySDK::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.stops_for_agency.list("agencyID")

    assert_pattern do
      response => OnebusawaySDK::Models::StopsForAgencyListResponse
    end
  end
end
