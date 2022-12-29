class Company < ApplicationRecord

    has_many :products
    
    has_many :addresses

    validates :name, presence: true 
    
    
    validates :gst, presence: true, format: { with: /\A[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}\Z/ }

    validates :email, presence:true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i } , uniqueness: true

    validates :cin, presence: true, format: { with: /\A([LUu]{1})([0-9]{5})([A-Za-z]{2})([0-9]{4})([A-Za-z]{3})([0-9]{6})\Z/ }

    validates :pan, presence: true, format: { with: /\A([a-zA-Z]{5})(\d{4})([a-zA-Z]{1})\Z/ }

    validates :phone_no, presence: true, format: { with: /\d[0-9]\)*\z/ }
    
    
    # before_validation :validate_email, :validate_phone_no, :validate_gst, :validate_pan, :validate_cin
    
    # def validate_email 
    #     unless email =~ URI::MailTo::EMAIL_REGEXP
    #         errors.add :email ,'is not an email'
    #     end
    # end 
    # def validate_phone_no
    #     unless phone_no == (" /\d[0-9]\)*\z/ ")
    #         errors.add :phone_no ,'is not a mobile number'
    #     end
    # end 
    # def validate_gst
    #     unless gst == gst.match?(/^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$/)
    #         errors.add :gst ,'is not a valid gst'
    #     end
    # end 
    # def validate_pan 
    #     unless pan == ( "[A-Za-z]{5}\d{4}[A-Za-z]{1}" )  
    #         errors.add  :pan ,'is not a valid pan number'
    #     end
    # end 
    # def validate_cin 
    #     unless cin ==  ( "[L|U]{1})([0-9]{5})([A-Za-z]{2})([0-9]{4})([A-Za-z]{3})([0-9]{6} ") 
    #         errors.add :cin ,'is not a cin number'
    #     end
    # end 
end
