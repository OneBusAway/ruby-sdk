# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::StopIDsForAgencyTest < OnebusawaySDK::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.stop_ids_for_agency.list("agencyID")

    assert_pattern do
      response => OnebusawaySDK::Models::StopIDsForAgencyListResponse
    end
  end
end
