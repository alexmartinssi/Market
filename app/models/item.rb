class Item < ActiveRecord::Base
  belongs_to :product
  belongs_to :purchase

  has_many :stocks

  validates :price, presence: true, allow_blank: false, length: {minimum: 3}
  validates :product_id, presence: true, allow_blank: false, length: {minimum: 1}
  validates :quantity, presence: true, allow_blank: false, length: {minimum: 1}

end
