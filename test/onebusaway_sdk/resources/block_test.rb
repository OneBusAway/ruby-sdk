# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::BlockTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.block.retrieve("blockID")

    assert_pattern do
      response => OnebusawaySDK::Models::BlockRetrieveResponse
    end
  end
end
