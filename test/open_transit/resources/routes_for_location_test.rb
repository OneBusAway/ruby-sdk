# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::RoutesForLocationTest < OpenTransit::Test::ResourceTest
  def test_list_required_params
    response = @onebusaway_sdk.routes_for_location.list(lat: 0, lon: 0)

    assert_pattern do
      response => OpenTransit::Models::RoutesForLocationListResponse
    end
  end
end
