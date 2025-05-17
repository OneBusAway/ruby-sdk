# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::TripDetailsTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.trip_details.retrieve("tripID")

    assert_pattern do
      response => OpenTransit::Models::TripDetailRetrieveResponse
    end
  end
end
