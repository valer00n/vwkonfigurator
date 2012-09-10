class CarModel
  include Mongoid::Document
  include Mongoid::Token
  # include Mongoid::Paperclip

  field :name, type: String
  field :description, type: String
  field :price, type: Float
  field :url, type: String, default: ->{ name.to_s.parameterize }  
  token :length => 8, :contains => :fixed_numeric

  field :image, type: String #temporary

  # /cc5/images/render/30100/([0-9a-z_]*).png 

  # has_mongoid_attached_file :picture,
  #   :path           => ':rails_root/public/system/:class/:attachment/:style/:filename',
  #   :storage => :filesystem,
  #   :styles => {
  #     :original => ['800x330>', :jpg],#http://icc.volkswagen.com/cc5-rus/images/vehicle.ashx?rs=XXL0800&rt=Front&hash=1735440238&mi=images%2fru-4.0%2fmissing_big_stage_xlarge.gif
  #     :small    => ['278x140#',   :jpg], 
  #     :medium   => ['410x169#',    :jpg],
  #     :large    => ['569x235>',   :jpg]
  #   },
  #   :convert_options => { :all => '-background white -flatten +matte' }

  # attr_accessible :picture

  embeds_many :car_groups
  accepts_nested_attributes_for :car_groups

  
end
