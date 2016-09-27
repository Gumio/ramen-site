class SearchesController < ApplicationController

  def home
    @shops = [{name: "一番星", address: "宮城県仙台市青葉区八幡５丁目１−１２"}, {name: "一二三", address: "宮城県仙台市青葉区国分町２丁目１３−２"}, {name: "一閃閣", address: "宮城県仙台市青葉区国分町2−10−10"}]
  end
end
