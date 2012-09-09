class CarModel
  include Mongoid::Document
  include Mongoid::Token
  field :name, type: String
  field :description, type: String
  field :price, type: Float
  token :length => 8, :contains => :fixed_numeric

  embeds_many :car_groups
  accepts_nested_attributes_for :car_groups

  field :url, type: String, default: ->{ name.to_s.parameterize }
end
