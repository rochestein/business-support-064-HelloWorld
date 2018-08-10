class WitnessEvidencesController < ApplicationController
  before_action :set_witness_evidence, only: [:show, :edit, :update, :destroy]

  # GET /witness_evidences
  # GET /witness_evidences.json
  def index
    @witness_evidences = WitnessEvidence.all
  end

  # GET /witness_evidences/1
  # GET /witness_evidences/1.json
  def show
  end

  # GET /witness_evidences/new
  def new
    @witness_evidence = WitnessEvidence.new
  end

  # GET /witness_evidences/1/edit
  def edit
  end

  # POST /witness_evidences
  # POST /witness_evidences.json
  def create
    @witness_evidence = WitnessEvidence.new(witness_evidence_params)

    respond_to do |format|
      if @witness_evidence.save
        format.html { redirect_to @witness_evidence, notice: 'Witness evidence was successfully created.' }
        format.json { render :show, status: :created, location: @witness_evidence }
      else
        format.html { render :new }
        format.json { render json: @witness_evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /witness_evidences/1
  # PATCH/PUT /witness_evidences/1.json
  def update
    respond_to do |format|
      if @witness_evidence.update(witness_evidence_params)
        format.html { redirect_to @witness_evidence, notice: 'Witness evidence was successfully updated.' }
        format.json { render :show, status: :ok, location: @witness_evidence }
      else
        format.html { render :edit }
        format.json { render json: @witness_evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /witness_evidences/1
  # DELETE /witness_evidences/1.json
  def destroy
    @witness_evidence.destroy
    respond_to do |format|
      format.html { redirect_to witness_evidences_url, notice: 'Witness evidence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_witness_evidence
      @witness_evidence = WitnessEvidence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def witness_evidence_params
      params.require(:witness_evidence).permit(:witness_id, :path_file, :narration)
    end
end
