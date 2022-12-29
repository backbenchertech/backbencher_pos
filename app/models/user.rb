class User < ApplicationRecord
    has_many :addresses
    # belongs_to :userable, polymorphic: true
    # # has_many :addressable, as: :addressable
    validates :phone_no, presence: true, format: { with: /\d[0-9]\)*\z/ }

    validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i } , uniqueness: true

    validates :password, :presence => true,
                   :confirmation => true,
                   :length => {:within => 6..40}
end
