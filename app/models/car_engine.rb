class CarEngine
  include Mongoid::Document
  include Mongoid::Token
  
  field :name, type: String
  field :power, type: String
  field :transmision, type: String
  field :acceleration, type: String
  field :standart, type: String
  field :price, type: String
  field :description, type: String

  token :length => 8, :contains => :fixed_numeric

end
