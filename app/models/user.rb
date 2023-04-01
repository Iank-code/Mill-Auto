class User < ApplicationRecord
    #password encryption    
    has_secure_password

    #relationships
    has_many :orders
    has_many :reviews
    has_many :cars, through: :reviews
    #validations
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true, format: {with: URI::MailTo::EMAIL_REGEXP}
    validates :password, presence: true, length: {:within => 4..20}, if: -> { new_record? || !password.nil?}
end
