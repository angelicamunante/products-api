class Category < ApplicationRecord
  self.table_name = 'category'

  has_many :products, class_name: 'Product', foreign_key: 'category'
end
