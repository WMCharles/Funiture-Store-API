class ProductReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :price, :quantity
  belongs_to :category, serializer: ProductCategorySerializer
  has_many :reviews, serializer: ReviewUserSerializer
end
