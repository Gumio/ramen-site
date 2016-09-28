require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest

  test "should get search" do
    get search_path
    assert_response :success
  end
end
