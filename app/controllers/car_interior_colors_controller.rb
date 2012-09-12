class CarInteriorColorsController < ApplicationController
  # GET /car_interior_colors
  # GET /car_interior_colors.json
  def index
    @car_interior_colors = CarInteriorColor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_interior_colors }
    end
  end

  # GET /car_interior_colors/1
  # GET /car_interior_colors/1.json
  def show
    @car_interior_color = CarInteriorColor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: {car_interior_color: @car_interior_color} }
    end
  end

  # GET /car_interior_colors/new
  # GET /car_interior_colors/new.json
  def new
    @car_interior_color = CarInteriorColor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_interior_color }
    end
  end

  # GET /car_interior_colors/1/edit
  def edit
    @car_interior_color = CarInteriorColor.find(params[:id])
  end

  # POST /car_interior_colors
  # POST /car_interior_colors.json
  def create
    @car_interior_color = CarInteriorColor.new(params[:car_interior_color])

    respond_to do |format|
      if @car_interior_color.save
        format.html { redirect_to @car_interior_color, notice: 'Car interior color was successfully created.' }
        format.json { render json: @car_interior_color, status: :created, location: @car_interior_color }
      else
        format.html { render action: "new" }
        format.json { render json: @car_interior_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_interior_colors/1
  # PUT /car_interior_colors/1.json
  def update
    @car_interior_color = CarInteriorColor.find(params[:id])

    respond_to do |format|
      if @car_interior_color.update_attributes(params[:car_interior_color])
        format.html { redirect_to @car_interior_color, notice: 'Car interior color was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_interior_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_interior_colors/1
  # DELETE /car_interior_colors/1.json
  def destroy
    @car_interior_color = CarInteriorColor.find(params[:id])
    @car_interior_color.destroy

    respond_to do |format|
      format.html { redirect_to car_interior_colors_url }
      format.json { head :no_content }
    end
  end
end
