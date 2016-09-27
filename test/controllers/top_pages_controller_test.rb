require 'test_helper'

class TopPagesControllerTest < ActionDispatch::IntegrationTest

  # 表示されるかのテスト
  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get search" do
    get search_path
    assert_response :success
  end

  test "should get prefecture" do
    get prefecture_path
    assert_response :success
  end

  test "should get rank" do
    get rank_path
    assert_response :success
  end

  test "should get about" do
    get about_path
    assert_response :success
  end

  test "should get help" do
    get root_path
    assert_response :success
  end

end
