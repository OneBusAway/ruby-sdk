# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::AgencyTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.agency.retrieve("agencyID")

    assert_pattern do
      response => OnebusawaySDK::Models::AgencyRetrieveResponse
    end
  end
end
