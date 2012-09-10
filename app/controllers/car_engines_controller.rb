class CarEnginesController < ApplicationController
  # GET /car_engines
  # GET /car_engines.json
  def index
    @car_engines = CarEngine.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_engines }
    end
  end

  # GET /car_engines/1
  # GET /car_engines/1.json
  def show
    @car_engine = CarEngine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car_engine }
    end
  end

  # GET /car_engines/new
  # GET /car_engines/new.json
  def new
    @car_engine = CarEngine.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_engine }
    end
  end

  # GET /car_engines/1/edit
  def edit
    @car_engine = CarEngine.find(params[:id])
  end

  # POST /car_engines
  # POST /car_engines.json
  def create
    @car_engine = CarEngine.new(params[:car_engine])

    respond_to do |format|
      if @car_engine.save
        format.html { redirect_to @car_engine, notice: 'Car engine was successfully created.' }
        format.json { render json: @car_engine, status: :created, location: @car_engine }
      else
        format.html { render action: "new" }
        format.json { render json: @car_engine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_engines/1
  # PUT /car_engines/1.json
  def update
    @car_engine = CarEngine.find(params[:id])

    respond_to do |format|
      if @car_engine.update_attributes(params[:car_engine])
        format.html { redirect_to @car_engine, notice: 'Car engine was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_engine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_engines/1
  # DELETE /car_engines/1.json
  def destroy
    @car_engine = CarEngine.find(params[:id])
    @car_engine.destroy

    respond_to do |format|
      format.html { redirect_to car_engines_url }
      format.json { head :no_content }
    end
  end
end
