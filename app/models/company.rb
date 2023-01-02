class Company < ApplicationRecord
  # Association
  has_many :products
  has_many :addresses, as: :addressable
  has_many :employees
  has_many :users, through: :employees

  # validation
  validates :name, presence: true
  validates :gst, presence: true,
              format: { with: /\A[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}\Z/ }
  validates :email, presence: true,
              format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i },
              uniqueness: true
  validates :cin, presence: true,
              format: { with: /\A([LUu]{1})([0-9]{5})([A-Za-z]{2})([0-9]{4})([A-Za-z]{3})([0-9]{6})\Z/ }
  validates :pan, presence: true,
              format: { with: /\A([a-zA-Z]{5})(\d{4})([a-zA-Z]{1})\Z/ }
  validates :phone, presence: true, format: { with: /\A\d{10}\z/ }
end 
