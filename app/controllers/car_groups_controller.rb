class CarGroupsController < ApplicationController
  # GET /car_groups
  # GET /car_groups.json
  def index
    @car_groups = CarGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_groups }
    end
  end

  # GET /car_groups/1
  # GET /car_groups/1.json
  def show
    @car_group = CarGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car_group }
    end
  end

  # GET /car_groups/new
  # GET /car_groups/new.json
  def new
    @car_group = CarGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_group }
    end
  end

  # GET /car_groups/1/edit
  def edit
    @car_group = CarGroup.find_by_token(params[:id])
  end

  # POST /car_groups
  # POST /car_groups.json
  def create

    @car_model = CarModel.find_by_token(params[:car_model_id])
    @car_group = @car_model.car_groups.create!(params[:car_group])
    redirect_to @car_model, :notice => "Group created"

    # respond_to do |format|
    #   if @car_group.save
    #     format.html { redirect_to @car_group, notice: 'Car group was successfully created.' }
    #     format.json { render json: @car_group, status: :created, location: @car_group }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @car_group.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /car_groups/1
  # PUT /car_groups/1.json
  def update
    @car_group = CarGroup.find_by_token(params[:id])

    respond_to do |format|
      if @car_group.update_attributes(params[:car_group])
        format.html { redirect_to @car_group, notice: 'Car group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_groups/1
  # DELETE /car_groups/1.json
  def destroy
    @car_group = CarGroup.find_by_token(params[:id])
    @car_group.destroy

    respond_to do |format|
      format.html { redirect_to car_groups_url }
      format.json { head :no_content }
    end
  end
end
