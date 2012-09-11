class CarColor
  include Mongoid::Document
  field :name, type: String
  field :image, type: String
  field :price, type: Float
end
