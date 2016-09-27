class SearchesController < ApplicationController

  def home
    @shops = [{name: "一番星", address: "仙台市"}, {name: "一二三", address: "仙台市"}, {name: "一閃閣", address: "仙台市"}]
  end
end
