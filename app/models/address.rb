class Address < ApplicationRecord
  
  belongs_to :userble, polymorphic: true
  validates :name, presence: true 
  validates :ad_line1, presence: true
  validates :ad_line2, presence: true
  validates :area, presence: true
  validates :city, presence: true
  validates :pin_code, presence: true,  length: { minimum: 6 , maximum: 6}
  validates :phone, presence: true, format: { with: /\d[0-9]\)*\z/ }
end
