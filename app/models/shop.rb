class Shop < ApplicationRecord
  belongs_to :prefecture
  has_many :reviews
  validates(:name, presence: true)
  validates(:address, presence: true)
  validates(:tel, presence: true)
  validates(:open_time, presence: true)
  validates(:close_time, presence: true)
  validates(:evaluation, presence: true)
  geocoded_by :address
  after_validation :geocode

  scope :keyword_search, -> (q) {
    where("name LIKE :q ESCAPE '\\' OR about LIKE :q ESCAPE '\\'", { q: "%#{sanitize_sql_like(q.to_s)}%"})
  }
  has_attached_file :image, styles: { medium: "240x240" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
