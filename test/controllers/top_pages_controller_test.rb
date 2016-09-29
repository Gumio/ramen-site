require 'test_helper'

class TopPagesControllerTest < ActionDispatch::IntegrationTest

  test "homeが表示されるかどうか" do
    get root_path
    assert_response :success
  end

  test "aboutが表示されるかどうか" do
    get about_path
    assert_response :success
  end

  test "helpが表示されるかどうか" do
    get help_path
    assert_response :success
  end

  test "地域別が表示されるかどうか" do
    get prefectures_path
    assert_response :success
  end

end
