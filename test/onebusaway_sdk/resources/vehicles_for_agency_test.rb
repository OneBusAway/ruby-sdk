# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::VehiclesForAgencyTest < OnebusawaySDK::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.vehicles_for_agency.list("agencyID")

    assert_pattern do
      response => OnebusawaySDK::Models::VehiclesForAgencyListResponse
    end
  end
end
