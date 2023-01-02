class Address < ApplicationRecord
  # Association 

  belongs_to :addressable, polymorphic: true
  
  # validation 

  validates :name,:ad_line1,:ad_line2,:area,:city, presence: true 
  validates :pin_code, presence: true,  length: { minimum: 6 , maximum: 6}
  validates :phone, presence: true, format: { with: /\A\d{10}\z/ }
end
