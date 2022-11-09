class Product < ApplicationRecord
  self.table_name = 'product'

  belongs_to :product_category, class_name: 'Category', foreign_key: 'category'
end
