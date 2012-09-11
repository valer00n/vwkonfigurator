class ConfiguratorController < ApplicationController
  def index
    @carmodels = CarModel.all

  end

  def model
    @carmodels = CarModel.all
    render :partial => 'model'
  end

  def trim 
    @carmodel = CarModel.find_by_token(params[:id_model])
    @cargroups = @carmodel.car_groups
    render :partial => 'trim'
  end

  def engine
    @car_engines = CarEngine.all
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
