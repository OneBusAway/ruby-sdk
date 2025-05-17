# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::TripDetailsTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.trip_details.retrieve("tripID")

    assert_pattern do
      response => OnebusawaySDK::Models::TripDetailRetrieveResponse
    end
  end
end
