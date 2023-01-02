class Product < ApplicationRecord
  # Association
  belongs_to :product_type
  belongs_to :company
  has_one :category

  # Validation
  validates :name, :description, :category, presence: true
end
