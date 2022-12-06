class Product < ApplicationRecord

    # Validations
    validates :title, presence: true
    validates :description, length: {minimum: 50}
    validates :price, presence: true
    validates :image_url, presence: true

end
