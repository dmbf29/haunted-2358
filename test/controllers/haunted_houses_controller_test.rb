require "test_helper"

class HauntedHousesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get haunted_houses_show_url
    assert_response :success
  end
end
