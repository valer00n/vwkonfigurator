class CarModelSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price
end
