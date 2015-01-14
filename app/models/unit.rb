class Unit < ActiveRecord::Base
  has_many :products
  validates :description, presence: true, allow_blank: false, length: {minimum: 3}
  validates :acronym, presence: true, allow_blank: false, length: {minimum: 1}
  validates :description, uniqueness: true
end
