# class User < ApplicationRecord
#     has_secure_password
#     validates :password, presence: true
# end

class User < ApplicationRecord
<<<<<<< HEAD
    #password encryption    
    has_secure_password

=======
    #password encryption   
    has_secure_password
>>>>>>> 3454c62fefdb54921e806ac555a1ea8aa068071c
    #relationships
    has_many :orders
    has_many :reviews
    has_many :cars, through: :reviews
    #validations
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true, format: {with: URI::MailTo::EMAIL_REGEXP}
    validates :password, presence: true, length: {:within => 4..20}, if: -> { new_record? || !password.nil?}
end
