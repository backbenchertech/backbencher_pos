class User < ApplicationRecord
  # Association
  has_many :addresses, as: :addressable
  has_many :employees
  has_many :companys, through: :employees

  # Validation
  validates :email, presence: true,
              format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i },
              uniqueness: true
  validates :phone_no, presence: true, format: { with: /\A\d{10}\z/ }
end
