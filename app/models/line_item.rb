class LineItem < ApplicationRecord
  has_many :carts

  enum :collection, { default: 0, best_seller: 1, keto: 2 }
end
