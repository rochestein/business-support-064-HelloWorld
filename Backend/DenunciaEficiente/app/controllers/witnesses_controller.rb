class WitnessesController < ApplicationController
  before_action :set_incident, only: [:show, :update, :destroy]
 
  def index
    @witnesses = Witness.all
    render json: @witnesses
  end
 
  def show
    render json: @witness
  end
 
  def create
    @witness = Witness.new(incident_params)
 
    if @witness.save
      render json: @witness, status: :created
    else
      render json: @witness.errors, status: :unprocessable_entity
    end
  end
 
  def update
    if @witness.update(incident_params)
      render json: @witness, status: :ok
    else
      render json: @witness.errors, status: :unprocessable_entity
    end
  end
 
  def destroy
    @witness.destroy
    head :no_content
  end
 
  private
    def set_incident
      @witness = Witness.find(params[:id])
    end
 
    def incident_params
      params.require(:witness).permit(:name, :description, :incidence_father_id)
    end
end
