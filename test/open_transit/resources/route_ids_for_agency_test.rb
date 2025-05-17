# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::RouteIDsForAgencyTest < OpenTransit::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.route_ids_for_agency.list("agencyID")

    assert_pattern do
      response => OpenTransit::Models::RouteIDsForAgencyListResponse
    end
  end
end
