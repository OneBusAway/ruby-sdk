# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::RouteIDsForAgencyTest < OnebusawaySDK::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.route_ids_for_agency.list("agencyID")

    assert_pattern do
      response => OnebusawaySDK::Models::RouteIDsForAgencyListResponse
    end
  end
end
