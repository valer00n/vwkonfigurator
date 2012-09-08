class CarGroup
  include Mongoid::Document
  include Mongoid::Token
  field :name, type: String
  token :length => 8, :contains => :fixed_numeric
end
