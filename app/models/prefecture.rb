class Prefecture < ApplicationRecord
  has_many :shops
  validates(:name, presence: true)
end
