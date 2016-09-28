require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest

  test "should search word" do
    post search_path, params: {q: "My"}
    assert_response :success
    assert_select "li", 7
  end

  test "should sanitize search_word" do
    post search_path, params: {q: "%') union select 100 as id, 'test' as name, 2 as prefecture_id, 'test' as address, '0' as tel, 'a' as about, '00:00' as open_time, '24:00' as close_time, 'test' as holiday, 0 as evaluation, 'a' as image, datetime('now') as created_at, datetime('now') as updated_at; --"}
    assert_response :success
    assert_select "li", 5
  end
end
