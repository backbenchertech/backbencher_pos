class User < ApplicationRecord
    # Association

    has_many :addresses, as: :addressable

    #validation 
   
    validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i } , uniqueness: true
    validates :phone_no, format: { with: /\A\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}\z/}

end
