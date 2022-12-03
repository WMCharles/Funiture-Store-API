class Review < ApplicationRecord

    # Validations
    validates :comment, presence: true
    validates :product_id, presence: true
    validates :user_id, presence: true

    # Associations 
    belongs_to :user 
    belongs_to :product
    
end
