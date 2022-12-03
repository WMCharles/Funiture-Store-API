class CategoryShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :products
end
