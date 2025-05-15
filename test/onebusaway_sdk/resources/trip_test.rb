# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::TripTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.trip.retrieve("tripID")

    assert_pattern do
      response => OnebusawaySDK::Models::TripRetrieveResponse
    end
  end
end
