# frozen_string_literal: true

require_relative "../test_helper"

class OnebusawaySDK::Test::Resources::ShapeTest < OnebusawaySDK::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.shape.retrieve("shapeID")

    assert_pattern do
      response => OnebusawaySDK::Models::ShapeRetrieveResponse
    end
  end
end
