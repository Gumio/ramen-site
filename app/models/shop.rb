class Shop < ApplicationRecord
  belongs_to :prefecture
  has_many :reviews
  validates(:name, presence: true)
  validates(:address, presence: true)
  validates(:tell, presence: true)
  validates(:open_time, presence: true)
  validates(:close_time, presence: true)
  validates(:evaluation, presence: true)
end