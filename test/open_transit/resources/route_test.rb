# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::RouteTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.route.retrieve("routeID")

    assert_pattern do
      response => OpenTransit::Models::RouteRetrieveResponse
    end
  end
end
