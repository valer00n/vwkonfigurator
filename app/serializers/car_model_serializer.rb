class CarModelSerializer < ActiveModel::Serializer
  attributes :_id, :name, :description, :price, :url, :token
end
