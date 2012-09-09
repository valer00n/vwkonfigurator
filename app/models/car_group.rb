class CarGroup
  include Mongoid::Document
  include Mongoid::Token
  field :name, type: String
  token :length => 8, :contains => :fixed_numeric

  embedded_in :car_model
  embeds_many :car_trims
  accepts_nested_attributes_for :car_trims
end
