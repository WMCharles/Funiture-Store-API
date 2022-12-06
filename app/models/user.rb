class User < ApplicationRecord

    # password encryption
    has_secure_password

    # Validations
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
    
    # Associations
    has_many :reviews
    
end
