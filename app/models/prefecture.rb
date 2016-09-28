class Prefecture < ApplicationRecord
  has_many :shops
  validates(:name, presence: true)

  HOKKAIDO_IDS = 1
  TOHOKU_IDS = [2..7]
  KANTOU_IDS = [8..14]
  HOKURIKU_IDS = [15..18]
  CHUBU_IDS = [19..24]
  KANSAI_IDS = [25..30]
  CHUGOKU_IDS = [31..35]
  SHIKOKU_IDS = [36..39]
  KYUSHU_IDS = [40..46]
  OKINAWA_IDS = 47

  scope :hokkaido, -> { where(id: HOKKAIDO_IDS) }
  scope :tohoku,   -> { where(id: TOHOKU_IDS) }
  scope :kantou,   -> { where(id: KANTOU_IDS) }
  scope :hokuriku, -> { where(id: HOKURIKU_IDS) }
  scope :chubu,    -> { where(id: CHUBU_IDS) }
  scope :kansai,   -> { where(id: KANSAI_IDS) }
  scope :chugoku,  -> { where(id: CHUGOKU_IDS) }
  scope :shikoku,  -> { where(id: SHIKOKU_IDS) }
  scope :kyushu,   -> { where(id: KYUSHU_IDS) }
  scope :okinawa,  -> { where(id: OKINAWA_IDS) }
end
