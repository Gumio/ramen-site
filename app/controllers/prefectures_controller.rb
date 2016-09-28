class PrefecturesController < ApplicationController

  def index
  end

  def show
    @shops = Shop.where(prefecture_id: params[:id])
    @prefecture = Prefecture.find(params[:id]).name
  end

  private
    def index_params
      params.permit(:q)
    end
end
