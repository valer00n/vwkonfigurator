class CarEngine
  include Mongoid::Document
  field :name, type: String
  field :power, type: String
  field :transmision, type: String
  field :acceleration, type: String
  field :standart, type: String
  field :price, type: String
  field :description, type: String
end
