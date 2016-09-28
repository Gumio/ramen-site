class ShopsController < ApplicationController

  def index
    @search_keyword = index_params[:q]
    @shops = Shop.keyword_search(index_params[:q])
  end

  def show
    @shop = Shop.find(params[:id])
  end

  private
    def index_params
      params.permit(:q)
    end

end
