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

  def detail
    @car_engines = CarEngine.all
    @car_colors = CarColor.all
    @car_interior_colors = CarInteriorColor.all    
    @car_options = CarOption.all
    render :partial => 'detail'
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
