class CarGroup
  include Mongoid::Document
  include Mongoid::Token
  field :name, type: String
  token :length => 8, :contains => :fixed_numeric

  belongs_to :car_model #embedded_in :car_model
  has_many :car_trims #embeds_many :car_trims
  
  accepts_nested_attributes_for :car_trims
end
