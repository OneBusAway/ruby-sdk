# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::BlockTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.block.retrieve("blockID")

    assert_pattern do
      response => OpenTransit::Models::BlockRetrieveResponse
    end
  end
end
