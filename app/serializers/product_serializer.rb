class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :price
  belongs_to :category, serializer: ProductCategorySerializer
end
