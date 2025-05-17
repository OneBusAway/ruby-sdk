# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::ConfigTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.config.retrieve

    assert_pattern do
      response => OpenTransit::Models::ConfigRetrieveResponse
    end
  end
end
