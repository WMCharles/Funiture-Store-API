class ProductCategory < ApplicationRecord
    validates :product_id, presence: true
    validates :category_id, presence: true
end
