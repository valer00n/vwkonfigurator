class ConfiguratorController < ApplicationController
  def index
    @carmodels = CarModel.all

  end

  def model
    @carmodels = CarModel.all
    render :partial => 'model'
  end

  def trim 
    @cargroups = CarGroup.all
    render :partial => 'trim'
  end

  def engine
    render :partial => 'engine'
  end

  def color
    render :partial => 'color'
  end

  def option
    render :partial => 'options'
  end

  def total
    render :partial => 'total'
  end

end
