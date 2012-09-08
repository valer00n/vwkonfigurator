class CarTrim
  include Mongoid::Document
  include Mongoid::Token
  field :name, type: String
  field :description, type: String
  field :price, type: Float
  token :length => 8, :contains => :fixed_numeric
end
