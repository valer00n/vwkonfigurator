class CarTrimSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price
end
