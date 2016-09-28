require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest

  test "should post search" do
    post search_path, params: {q: "My"}
    assert_response :success
  end

  test "should get search" do
    get search_path, params: {q: ""}
    assert_response :success
  end
end
