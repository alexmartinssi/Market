class Stock < ActiveRecord::Base
  belongs_to :item
  belongs_to :supplier

  validates :quantity, presence: true, allow_blank: false, length: {minimum: 1}
  validates :sale_price, presence: true, allow_blank: false, length: {minimum: 3}
end
