class CarColorsController < ApplicationController
  # GET /car_colors
  # GET /car_colors.json
  def index
    @car_colors = CarColor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_colors }
    end
  end

  # GET /car_colors/1
  # GET /car_colors/1.json
  def show
    @car_color = CarColor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car_color }
    end
  end

  # GET /car_colors/new
  # GET /car_colors/new.json
  def new
    @car_color = CarColor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_color }
    end
  end

  # GET /car_colors/1/edit
  def edit
    @car_color = CarColor.find(params[:id])
  end

  # POST /car_colors
  # POST /car_colors.json
  def create
    @car_color = CarColor.new(params[:car_color])

    respond_to do |format|
      if @car_color.save
        format.html { redirect_to @car_color, notice: 'Car color was successfully created.' }
        format.json { render json: @car_color, status: :created, location: @car_color }
      else
        format.html { render action: "new" }
        format.json { render json: @car_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_colors/1
  # PUT /car_colors/1.json
  def update
    @car_color = CarColor.find(params[:id])

    respond_to do |format|
      if @car_color.update_attributes(params[:car_color])
        format.html { redirect_to @car_color, notice: 'Car color was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_colors/1
  # DELETE /car_colors/1.json
  def destroy
    @car_color = CarColor.find(params[:id])
    @car_color.destroy

    respond_to do |format|
      format.html { redirect_to car_colors_url }
      format.json { head :no_content }
    end
  end
end
