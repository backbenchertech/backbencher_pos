class Employee < ApplicationRecord
    belongs_to :role 
    belongs_to :user
    belongs_to :company

    #validation
    validates :status, presence: true
end
