class CarEngineSerializer < ActiveModel::Serializer
  attributes :id, :name, :power, :transmision, :acceleration, :standart, :price, :description
end
