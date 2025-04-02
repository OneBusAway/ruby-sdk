# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::TripForVehicleTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.trip_for_vehicle.retrieve("vehicleID")

    assert_pattern do
      response => OnebusawaySDK::Models::TripForVehicleRetrieveResponse
    end
  end
end
