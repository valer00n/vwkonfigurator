class CarTrim
  include Mongoid::Document
  include Mongoid::Token
  field :name, type: String
  field :description, type: String
  field :price, type: Float
  field :url, type: String, default: ->{ name.to_s.parameterize }

  token :length => 8, :contains => :fixed_numeric

  embedded_in :car_groups

end
