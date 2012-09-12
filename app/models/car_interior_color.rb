class CarInteriorColor
  include Mongoid::Document
  include Mongoid::Token  
  field :name, type: String
  field :image, type: String
  field :description, type: String
  token :length => 8, :contains => :fixed_numeric  
end
