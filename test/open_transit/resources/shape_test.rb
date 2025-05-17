# frozen_string_literal: true

require_relative "../test_helper"

class OpenTransit::Test::Resources::ShapeTest < OpenTransit::Test::ResourceTest
  def test_retrieve
    response = @onebusaway_sdk.shape.retrieve("shapeID")

    assert_pattern do
      response => OpenTransit::Models::ShapeRetrieveResponse
    end
  end
end
