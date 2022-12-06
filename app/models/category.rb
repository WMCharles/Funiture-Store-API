class Category < ApplicationRecord

    # Validations
    validates :name, inclusion: { in: %w(Living-Room Dining Kitchen Bedroom), message: "%{value} is not a valid size" }
    validates :description, length: { minimum: 20 }

    # associations
    has_many :products, dependent: :destroy

end
