class CarTrim
  include Mongoid::Document
  include Mongoid::Token
  # include Mongoid::Paperclip

  field :name, type: String
  field :description, type: String
  field :price, type: Float
  field :url, type: String, default: ->{ name.to_s.parameterize }
  token :length => 8, :contains => :fixed_numeric

  field :image, type: String #temporary

  # has_mongoid_attached_file :picture

  # attr_accessible :picture

  belongs_to :car_group # embedded_in :car_groups

end
