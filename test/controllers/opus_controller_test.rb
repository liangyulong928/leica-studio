require "test_helper"

class OpusControllerTest < ActionDispatch::IntegrationTest
  test "should get details" do
    get opus_details_url
    assert_response :success
  end
end
