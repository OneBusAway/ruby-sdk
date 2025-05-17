# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::VehiclesForAgencyTest < OpenTransit::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.vehicles_for_agency.list("agencyID")

    assert_pattern do
      response => OpenTransit::Models::VehiclesForAgencyListResponse
    end
  end
end
