class Product < ApplicationRecord
  belongs_to :company
  validates :name, presence: true 
  validates :description, presence: true 
  validates :category,  presence: true 
end
