class TopPagesController < ApplicationController
  before_action :create_area, only: [:home]

  def home
  end

  def help
  end

  def about
  end

end
