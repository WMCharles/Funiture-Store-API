class ReviewUserSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment
  belongs_to :user, serializer: UserReviewSerializer
end
