class User < ApplicationRecord
    # Association

    has_many :addresses, as: :addressable

    #validation 
   
    validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i } , uniqueness: true
    validates :phone_no, presence: true, format: { with: /\A\d{10}\z/ }
end
