class CarTrimSerializer < ActiveModel::Serializer
  attributes :_id, :name, :description, :price, :url, :image, :token
end
