class Cart < ApplicationRecord
  has_many :cart_items
  has_many :line_items, through: :cart_items
end
