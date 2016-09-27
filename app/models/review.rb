class Review < ApplicationRecord
  belongs_to :shop
  validates(:star, presence: true)
end
