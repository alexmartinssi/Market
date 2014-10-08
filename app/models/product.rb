class Product < ActiveRecord::Base
  belongs_to :unit
  belongs_to :category
  belongs_to :supplier
  validates :bar_code, presence: true, allow_blank: false, length: {minimum: 3}
  validates :description, presence: true, allow_blank: false, length: {minimum: 3}
  validates :price, presence: true, allow_blank: false, length: {minimum: 1}
  validates :quantity, presence: true, allow_blank: false, length: {minimum: 1}
end
