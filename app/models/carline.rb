class Carline
  include Mongoid::Document
  include Mongoid::Paperclip

  field :title, type: String
  field :description, type: String
  field :price, type: Float

  field :_id, type: String, default: ->{ title.to_s.parameterize }

  has_mongoid_attached_file :picture

end
