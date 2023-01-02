class Product < ApplicationRecord
  # Association
  belongs_to :company

  # Validation    
  validates :name, presence: true 
  validates :description, presence: true 
  validates :category,  presence: true 
end
