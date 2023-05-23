class LineItem < ApplicationRecord
  has_many :carts

  # Question: Any specific reason to use a enum instead
  # of a simply using a String?
  enum collection: { default: 0, best_seller: 1, keto: 2 }
  scope :discountable, -> { where.not(collection: 2)}
end
