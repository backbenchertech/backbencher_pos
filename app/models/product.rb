class Product < ApplicationRecord
  # Association
  belongs_to :product_type
  belongs_to :company, :foreign_key => :user_id

  # Validation
  validates :name, :description, :category, presence: true
end
