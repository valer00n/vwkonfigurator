class CarInteriorColor
  include Mongoid::Document
  field :name, type: String
  field :image, type: String
  field :description, type: String
end
