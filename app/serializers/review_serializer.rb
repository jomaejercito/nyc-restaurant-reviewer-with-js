class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :restaurant, :rating, :comment
  belongs_to :user
  belongs_to :restaurant
end
