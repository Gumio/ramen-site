require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest

  test "should get search with params" do
    get search_path, params: {q: "My"}
    assert_response :success
  end

  test "should get search without params" do
    get search_path, params: {q: ""}
    assert_response :success
  end

  test "should get search with nil" do
    get search_path, params: {q: nil}
    assert_response :success
  end
end
