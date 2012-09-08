class ConfiguratorController < ApplicationController
  def index
    @carmodels = CarModel.all

  end
end
