class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :tax_formula, presence: true

  has_one :type
end
