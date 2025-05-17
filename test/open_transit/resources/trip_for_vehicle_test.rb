# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::TripForVehicleTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.trip_for_vehicle.retrieve("vehicleID")

    assert_pattern do
      response => OpenTransit::Models::TripForVehicleRetrieveResponse
    end
  end
end
