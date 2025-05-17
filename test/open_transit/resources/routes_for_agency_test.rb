# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::RoutesForAgencyTest < OpenTransit::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.routes_for_agency.list("agencyID")

    assert_pattern do
      response => OpenTransit::Models::RoutesForAgencyListResponse
    end
  end
end
