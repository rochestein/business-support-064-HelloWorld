class Api::EvidencesController < ApplicationController
    before_action :set_evidence, only: [:show, :update, :destroy]
   
    def index
      @evidences = Evidence.all
      render json: @evidences
    end
   
    def show
      render json: @evidence
    end
   
    def create
      @evidence = Evidence.new(evidence_params)
   
      if @evidence.save
        render json: @evidence, status: :created
      else
        render json: @evidence.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @evidence.update(evidence_params)
        render json: @evidence, status: :ok
      else
        render json: @evidence.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @evidence.destroy
      head :no_content
    end
   
    private
      def set_evidence
        @evidence = Evidence.find(params[:id])
      end
   
      def evidence_params
        params.require(:evidence).permit(:complaint_id, :path_file, :narration)
      end
end
