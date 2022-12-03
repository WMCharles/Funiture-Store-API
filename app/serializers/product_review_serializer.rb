class ProductReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image_url, :price
  has_many :reviews, serializer: ReviewUserSerializer
end
