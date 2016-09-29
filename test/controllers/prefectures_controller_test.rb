require 'test_helper'

class PrefecturesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get prefectures_path
    assert_response :success
  end

  test "各都道府県の検索が表示されるかどうか" do
    for i in 1..47 do
      get prefectures_path"/#{i}"
      assert_response :success
    end
  end

end
