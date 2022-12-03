class Category < ApplicationRecord
    validates :name, inclusion: { in: %w(Living-Room Dining Kitchen Bedroom), message: "%{value} is not a valid size" }
    validates :description, length: { minimum: 50 }
end
