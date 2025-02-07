# frozen_string_literal: true

require_relative "../test_helper"

class Onebusaway::Test::Resources::ArrivalAndDepartureTest < Minitest::Test
  def before_all
    @onebusaway_sdk = Onebusaway::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key"
    )
  end

  def test_retrieve_required_params
    response = @onebusaway_sdk.arrival_and_departure.retrieve("stopID", service_date: 0, trip_id: "tripId")

    assert_pattern do
      response => Onebusaway::Models::ArrivalAndDepartureRetrieveResponse
    end
  end

  def test_list
    response = @onebusaway_sdk.arrival_and_departure.list("stopID")

    assert_pattern do
      response => Onebusaway::Models::ArrivalAndDepartureListResponse
    end
  end
end
