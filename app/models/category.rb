class Category < ApplicationRecord
    validates :name, inclusion: { in: %w(living-room dining kitchen), message: "%{value} is not a valid size" }
    validates :description, length: { minimum: 50 }
end
