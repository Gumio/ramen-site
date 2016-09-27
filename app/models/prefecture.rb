class Prefecture < ApplicationRecord
  validates(:prefecture, presence: true)
end
