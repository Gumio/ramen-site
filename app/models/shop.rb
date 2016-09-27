class Shop < ApplicationRecord
  belongs_to :prefecture
  validates(:name, presence: true)
  validates(:prefectures_id, presence: true)
  validates(:address, presence: true)
  validates(:tell, presence: true)
  validates(:open_time, presence: true)
  validates(:close_time, presence: true)
  validates(:evaluation, presence: true)
end
