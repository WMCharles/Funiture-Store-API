class Product < ApplicationRecord

    # Validations
    validates :title, presence: true
    validates :description, length: {minimum: 50}
    validates :price, presence: true
    validates :image_url, presence: true

    # associations 
    belongs_to :category
    has_many :reviews, dependent: :destroy
end
