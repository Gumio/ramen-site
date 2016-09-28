require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest

  test "should search word" do
    post search_path, params: {q: "My"}
    assert_response :success
    assert_select "li", 7
  end

  test "should sanitize search_word" do
    post search_path, params: {q: "%' union select * from shops; --"}
    assert_response :success
    assert_select "li", 5
  end
end
