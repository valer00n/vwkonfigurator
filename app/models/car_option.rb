class CarOption
  include Mongoid::Document
  field :name, type: String
  field :price, type: Float
  field :category, type: String
end
