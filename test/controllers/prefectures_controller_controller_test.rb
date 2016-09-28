require 'test_helper'

class PrefecturesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get prefectures_controller_show_url
    assert_response :success
  end

end
