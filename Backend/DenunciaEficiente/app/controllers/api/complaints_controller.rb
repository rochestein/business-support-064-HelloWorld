class Api::ComplaintsController < ApplicationController
    before_action :set_complaint, only: [:show, :update, :destroy]
   
    def index
      @complaints = Complaint.all
      render json: @complaints
    end
   
    def show
      render json: @complaint
    end
   
    def create
      @complaint = Complaint.new(complaint_params)
   
      if @complaint.save
        render json: @complaint, status: :created
      else
        render json: @complaint.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @complaint.update(complaint_params)
        render json: @complaint, status: :ok
      else
        render json: @complaint.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @complaint.destroy
      head :no_content
    end
   
    private
      def set_complaint
        @complaint = Complaint.find(params[:id])
      end
   
      def complaint_params
        params.require(:complaint).permit(:user_id, :incident_id, :police_unit_id, :location, :date_incident)
      end
end
