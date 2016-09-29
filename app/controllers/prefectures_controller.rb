class PrefecturesController < ApplicationController
  before_action :create_area, only: [:index]
  def index
  end

  def show
    @prefecture_name = Prefecture.find(params[:id])
    @shops = @prefecture_name.shops.paginate(page: params[:page])
  end
end
