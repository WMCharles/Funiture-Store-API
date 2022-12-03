class Category < ApplicationRecord

    # Validations
    validates :name, inclusion: { in: %w(Living-Room Dining Kitchen Bedroom), message: "%{value} is not a valid size" }
    validates :description, length: { minimum: 20 }

    # Associations
    has_many :product_categories
    has_many :products, through: :product_categories

end
