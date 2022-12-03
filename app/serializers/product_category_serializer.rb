class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :category_id, :product_id
end
