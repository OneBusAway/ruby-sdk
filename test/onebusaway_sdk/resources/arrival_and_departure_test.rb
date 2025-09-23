# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::ArrivalAndDepartureTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve_required_params
    response = @onebusaway_sdk.arrival_and_departure.retrieve("1_75403", service_date: 0, trip_id: "tripId")

    assert_pattern do
      response => OnebusawaySDK::Models::ArrivalAndDepartureRetrieveResponse
    end
  end

  def test_list
    response = @onebusaway_sdk.arrival_and_departure.list("1_75403")

    assert_pattern do
      response => OnebusawaySDK::Models::ArrivalAndDepartureListResponse
    end
  end
end
