class Product < ActiveRecord::Base
  belongs_to :unit
  belongs_to :category

  has_one :item

  validates :bar_code, presence: true, allow_blank: false, length: {minimum: 3}
  validates :description, presence: true, allow_blank: false, length: {minimum: 3}
  validates :unit_id, presence: true, allow_blank: false, length: {minimum: 1}
  validates :category_id, presence: true, allow_blank: false, length: {minimum: 1}
  validates :bar_code, uniqueness: true
end
