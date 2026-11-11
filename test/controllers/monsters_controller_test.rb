require "test_helper"

class MonstersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get monsters_new_url
    assert_response :success
  end
end
