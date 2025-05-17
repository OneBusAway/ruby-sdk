# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::TripTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.trip.retrieve("tripID")

    assert_pattern do
      response => OpenTransit::Models::TripRetrieveResponse
    end
  end
end
