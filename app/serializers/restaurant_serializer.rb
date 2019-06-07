class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_many :reviews
  has_many :users, through: :reviews
  belongs_to :cuisine
  belongs_to :neighborhood
end
