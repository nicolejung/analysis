class CouplingcsController < ApplicationController
  before_action :set_couplingc, only: [:show, :edit, :update, :destroy]

  # GET /couplingcs
  # GET /couplingcs.json
  def index
    @couplingcs = Couplingc.all
  end

  # GET /couplingcs/1
  # GET /couplingcs/1.json
  def show
  end

  # GET /couplingcs/new
  def new
    @couplingc = Couplingc.new
  end

  # GET /couplingcs/1/edit
  def edit
  end

  # POST /couplingcs
  # POST /couplingcs.json
  def create
    @couplingc = Couplingc.new(couplingc_params)

    respond_to do |format|
      if @couplingc.save
        format.html { redirect_to @couplingc, notice: 'Couplingc was successfully created.' }
        format.json { render :show, status: :created, location: @couplingc }
      else
        format.html { render :new }
        format.json { render json: @couplingc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /couplingcs/1
  # PATCH/PUT /couplingcs/1.json
  def update
    respond_to do |format|
      if @couplingc.update(couplingc_params)
        format.html { redirect_to @couplingc, notice: 'Couplingc was successfully updated.' }
        format.json { render :show, status: :ok, location: @couplingc }
      else
        format.html { render :edit }
        format.json { render json: @couplingc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /couplingcs/1
  # DELETE /couplingcs/1.json
  def destroy
    @couplingc.destroy
    respond_to do |format|
      format.html { redirect_to couplingcs_url, notice: 'Couplingc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_couplingc
      @couplingc = Couplingc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def couplingc_params
      params.require(:couplingc).permit(:signal, :multiplet, :amountc, :coupling, :buffera, :bufferb, :bufferc, :bufferd, :oka, :okb, :cnmrbracket_id, :nmrdetailc_id, :cnmr_id, :singlepart_id, :description_id, :fulldoc_id)
    end
end
