class NeighborhoodSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :restaurants
end
