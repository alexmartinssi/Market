class Supplier < ActiveRecord::Base

  has_many :purchases
  has_many :stocks

  validates :name, presence: true, allow_blank: false, length: {minimum: 3}
  validates :cnpj, presence: true, allow_blank: false, length: {minimum: 12}
end
