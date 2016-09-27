class Review < ApplicationRecord
  belongs_to :shop
  validates(:star, presence: true)
  validates(:shop_id, presence: true)
end
