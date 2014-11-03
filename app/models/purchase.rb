class Purchase < ActiveRecord::Base
  has_many :items
  belongs_to :supplier

  #validates :total, presence: true, allow_blank: false, length: {minimum: 3}
  #validates :item_id, presence: true, allow_blank: false, length: {minimum: 1}
  validates :supplier_id, presence: true, allow_blank: false, length: {minimum: 1}
end
