class ConfiguratorController < ApplicationController
  def index
    @carlines = Carline.all

  end
end
