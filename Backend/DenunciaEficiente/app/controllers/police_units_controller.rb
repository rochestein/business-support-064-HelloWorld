class PoliceUnitsController < ApplicationController
  before_action :set_police_unit, only: [:show, :edit, :update, :destroy]

  # GET /police_units
  # GET /police_units.json
  def index
    @police_units = PoliceUnit.all
  end

  # GET /police_units/1
  # GET /police_units/1.json
  def show
  end

  # GET /police_units/new
  def new
    @police_unit = PoliceUnit.new
  end

  # GET /police_units/1/edit
  def edit
  end

  # POST /police_units
  # POST /police_units.json
  def create
    @police_unit = PoliceUnit.new(police_unit_params)

    respond_to do |format|
      if @police_unit.save
        format.html { redirect_to @police_unit, notice: 'Police unit was successfully created.' }
        format.json { render :show, status: :created, location: @police_unit }
      else
        format.html { render :new }
        format.json { render json: @police_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /police_units/1
  # PATCH/PUT /police_units/1.json
  def update
    respond_to do |format|
      if @police_unit.update(police_unit_params)
        format.html { redirect_to @police_unit, notice: 'Police unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @police_unit }
      else
        format.html { render :edit }
        format.json { render json: @police_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /police_units/1
  # DELETE /police_units/1.json
  def destroy
    @police_unit.destroy
    respond_to do |format|
      format.html { redirect_to police_units_url, notice: 'Police unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_police_unit
      @police_unit = PoliceUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def police_unit_params
      params.require(:police_unit).permit(:name)
    end
end
