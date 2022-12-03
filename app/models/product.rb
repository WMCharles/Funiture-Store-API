class Product < ApplicationRecord

    # Validations
    validates :title, presence: true
    validates :description, length: {minimum: 50}
    validates :price, presence: true
    validates :image_url, presence: true

    # Associations
    has_many :product_categories
    has_many :categories, through: :product_categories
    
end
