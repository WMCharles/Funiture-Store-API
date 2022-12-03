class Product < ApplicationRecord
    validates :title, presence: true
    validates :description, length: {minimum: 50}
    validates :price, presence: true
end
