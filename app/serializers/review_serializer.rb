class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment
end
