require 'test_helper'

class ShopTest < ActiveSupport::TestCase

  test "should search word" do
    shops = Shop.keyword_search("My")
    assert_equal 2, shops.count
  end

  test "search_word should be sanitized" do
    shops = Shop.keyword_search("%') union select 100 as id, 'test' as name, 2 as prefecture_id, 'test' as address, '0' as tel, 'a' as about, '00:00' as open_time, '24:00' as close_time, 'test' as holiday, 0 as evaluation, 'a' as image, datetime('now') as created_at, datetime('now') as updated_at; --")
    assert_equal 0, shops.count
  end
end
