class PrefecturesController < ApplicationController
  before_action :create_area, only: [:index]
  def index
  end

  def show
    @shops = Shop.where(prefecture_id: params[:id]).paginate(page: params[:page])
    @prefecture = Prefecture.find(params[:id]).name
  end

end
