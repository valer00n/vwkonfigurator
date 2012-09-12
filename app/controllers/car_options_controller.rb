class CarOptionsController < ApplicationController
  # GET /car_options
  # GET /car_options.json
  def index
    @car_options = CarOption.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_options }
    end
  end

  # GET /car_options/1
  # GET /car_options/1.json
  def show
    @car_option = CarOption.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: {car_option: @car_option} }
    end
  end

  # GET /car_options/new
  # GET /car_options/new.json
  def new
    @car_option = CarOption.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_option }
    end
  end

  # GET /car_options/1/edit
  def edit
    @car_option = CarOption.find(params[:id])
  end

  # POST /car_options
  # POST /car_options.json
  def create
    @car_option = CarOption.new(params[:car_option])

    respond_to do |format|
      if @car_option.save
        format.html { redirect_to @car_option, notice: 'Car option was successfully created.' }
        format.json { render json: @car_option, status: :created, location: @car_option }
      else
        format.html { render action: "new" }
        format.json { render json: @car_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_options/1
  # PUT /car_options/1.json
  def update
    @car_option = CarOption.find(params[:id])

    respond_to do |format|
      if @car_option.update_attributes(params[:car_option])
        format.html { redirect_to @car_option, notice: 'Car option was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_options/1
  # DELETE /car_options/1.json
  def destroy
    @car_option = CarOption.find(params[:id])
    @car_option.destroy

    respond_to do |format|
      format.html { redirect_to car_options_url }
      format.json { head :no_content }
    end
  end
end
