class Api::WitnessEvidencesController < ApplicationController
    before_action :set_witnessEvidence, only: [:show, :update, :destroy]
   
    def index
      @witnessEvidences = WitnessEvidence.all
      render json: @witnessEvidences
    end
   
    def show
      render json: @witnessEvidence
    end
   
    def create
      @witnessEvidence = WitnessEvidence.new(witnessEvidence_params)
   
      if @witnessEvidence.save
        render json: @witnessEvidence, status: :created
      else
        render json: @witnessEvidence.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @witnessEvidence.update(witnessEvidence_params)
        render json: @witnessEvidence, status: :ok
      else
        render json: @witnessEvidence.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @witnessEvidence.destroy
      head :no_content
    end
   
    private
      def set_witnessEvidence
        @witnessEvidence = WitnessEvidence.find(params[:id])
      end
   
      def witnessEvidence_params
        params.require(:witness_evidence).permit(:witness_id, :path_file, :narration)
      end
end
