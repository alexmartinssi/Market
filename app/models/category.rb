class Category < ActiveRecord::Base
  has_many :products
  validates :name, presence: true, allow_blank: false, length: {minimum: 3}
  validates :name, uniqueness: true
end
