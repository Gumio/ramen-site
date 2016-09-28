class TopPagesController < ApplicationController
  before_action :create_area, only: [:home]

  def home
  end

  def help
  end

  def about
  end

  private

    def create_area
      @japan_areas =
      {
        '北海道'  => Prefecture.hokkaido,
        '東北'   => Prefecture.tohoku,
        '関東'   => Prefecture.kantou,
        '北陸'   => Prefecture.hokuriku,
        '中部'   => Prefecture.chubu,
        '関西'   => Prefecture.kansai,
        '中国'   => Prefecture.chugoku,
        '四国'   => Prefecture.shikoku,
        '九州'   => Prefecture.kyushu,
        '沖縄'   => Prefecture.okinawa
      }
    end

end
