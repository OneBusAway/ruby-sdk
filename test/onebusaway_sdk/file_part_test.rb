# frozen_string_literal: true

require_relative "test_helper"

class OnebusawaySDK::Test::FilePartTest < Minitest::Test
  def test_to_json
    text = "gray"
    filepart = OnebusawaySDK::FilePart.new(StringIO.new(text))

    assert_equal(text.to_json, filepart.to_json)
  end
end
