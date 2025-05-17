# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::StopsForLocationTest < OpenTransit::Test::ResourceTest
  def test_list_required_params
    response = @onebusaway_sdk.stops_for_location.list(lat: 0, lon: 0)

    assert_pattern do
      response => OpenTransit::Models::StopsForLocationListResponse
    end
  end
end
