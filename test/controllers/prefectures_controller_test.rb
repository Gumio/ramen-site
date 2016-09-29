require 'test_helper'

class PrefecturesControllerTest < ActionDispatch::IntegrationTest
  test "地域別検索ページが表示されるかどうか" do
    get prefectures_path
    assert_response :success
  end

  test "都道府県毎の検索ページが表示されるかどうか" do
    get prefecture_path(prefectures(:one))
    assert_response :success
    get prefecture_path(prefectures(:two))
    assert_response :success
  end

  test "404が返ってくるかどうか" do
    assert_raises(ActiveRecord::RecordNotFound) { get prefecture_path(id: 0) }
    assert_raises(ActiveRecord::RecordNotFound) { get prefecture_path(id: 48) }
  end
end
