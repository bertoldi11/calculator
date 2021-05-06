class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :tax_formula, presence: true

  has_one :type

  before_create :calculate_price_by_type

  private
   def calculate_price_by_type
     type = Type.find(self.type_id)
     value_string = "#{self.price} #{type.operation} #{type.value}"
     self.price = eval(value_string)
   end
end
