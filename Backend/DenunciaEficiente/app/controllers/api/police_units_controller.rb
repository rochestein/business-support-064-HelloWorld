class Api::PoliceUnitsController < ApplicationController
    before_action :set_policeUnit, only: [:show, :update, :destroy]
   
    def index
      @policeUnits = PoliceUnit.all
      render json: @policeUnits
    end
   
    def show
      render json: @policeUnit
    end
   
    def create
      @policeUnit = PoliceUnit.new(policeUnit_params)
   
      if @policeUnit.save
        render json: @policeUnit, status: :created
      else
        render json: @policeUnit.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @policeUnit.update(policeUnit_params)
        render json: @policeUnit, status: :ok
      else
        render json: @policeUnit.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @policeUnit.destroy
      head :no_content
    end
   
    private
      def set_policeUnit
        @policeUnit = PoliceUnit.find(params[:id])
      end
   
      def policeUnit_params
        params.require(:police_unit).permit(:name)
      end
end
