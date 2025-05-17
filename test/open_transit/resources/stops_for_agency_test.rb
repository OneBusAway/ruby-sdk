# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::StopsForAgencyTest < OpenTransit::Test::ResourceTest
  def test_list
    response = @onebusaway_sdk.stops_for_agency.list("agencyID")

    assert_pattern do
      response => OpenTransit::Models::StopsForAgencyListResponse
    end
  end
end
