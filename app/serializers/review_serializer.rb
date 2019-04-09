class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :restaurant, :rating, :comment
end
