class CarColor
  include Mongoid::Document
  include Mongoid::Token  
  field :name, type: String
  field :image, type: String
  field :price, type: Float

  token :length => 8, :contains => :fixed_numeric
    
end
