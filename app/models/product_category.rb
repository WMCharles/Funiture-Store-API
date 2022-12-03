class ProductCategory < ApplicationRecord

    # Validations
    validates :product_id, presence: true
    validates :category_id, presence: true

    # Associations
    belongs_to :product
    belongs_to :category
    
end
