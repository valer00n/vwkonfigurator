class CarlinesController < ApplicationController
  # GET /carlines
  # GET /carlines.json
  def index
    @carlines = Carline.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carlines }
    end
  end

  # GET /carlines/1
  # GET /carlines/1.json
  def show
    @carline = Carline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @carline }
    end
  end

  # GET /carlines/new
  # GET /carlines/new.json
  def new
    @carline = Carline.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @carline }
    end
  end

  # GET /carlines/1/edit
  def edit
    @carline = Carline.find(params[:id])
  end

  # POST /carlines
  # POST /carlines.json
  def create
    @carline = Carline.new(params[:carline])

    respond_to do |format|
      if @carline.save
        format.html { redirect_to @carline, notice: 'Carline was successfully created.' }
        format.json { render json: @carline, status: :created, location: @carline }
      else
        format.html { render action: "new" }
        format.json { render json: @carline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carlines/1
  # PUT /carlines/1.json
  def update
    @carline = Carline.find(params[:id])

    respond_to do |format|
      if @carline.update_attributes(params[:carline])
        format.html { redirect_to @carline, notice: 'Carline was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @carline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carlines/1
  # DELETE /carlines/1.json
  def destroy
    @carline = Carline.find(params[:id])
    @carline.destroy

    respond_to do |format|
      format.html { redirect_to carlines_url }
      format.json { head :no_content }
    end
  end
end
