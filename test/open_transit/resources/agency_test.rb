# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::AgencyTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.agency.retrieve("agencyID")

    assert_pattern do
      response => OpenTransit::Models::AgencyRetrieveResponse
    end
  end
end
