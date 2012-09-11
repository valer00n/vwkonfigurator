class CarOption
  include Mongoid::Document
  include Mongoid::Token  
  field :name, type: String
  field :price, type: Float
  field :category, type: String

  token :length => 8, :contains => :fixed_numeric  
end
