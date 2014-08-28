class CnmrsController < ApplicationController
  before_action :set_cnmr, only: [:show, :edit, :update, :destroy]

  # GET /cnmrs
  # GET /cnmrs.json
  def index
    if params[:singlepart].nil? then
    @cnmrs = Hnmr.all
    else
    @cnmrs = Cnmr.where(['singlepart_id = ?', params[:singlepart]])
    end
  end

  # GET /cnmrs/1
  # GET /cnmrs/1.json
  def show
  end

  # GET /cnmrs/new
  def new
    @cnmr = Cnmr.new
  end

  # GET /cnmrs/1/edit
  def edit
  end

  # POST /cnmrs
  # POST /cnmrs.json
  def create
    @cnmr = Cnmr.new(cnmr_params)

    respond_to do |format|
      if @cnmr.save
        format.html { redirect_to @cnmr, notice: 'Cnmr was successfully created.' }
        format.json { render :show, status: :created, location: @cnmr }
      else
        format.html { render :new }
        format.json { render json: @cnmr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cnmrs/1
  # PATCH/PUT /cnmrs/1.json
  def update
    respond_to do |format|
      if @cnmr.update(cnmr_params)
        format.html { redirect_to @cnmr, notice: 'Cnmr was successfully updated.' }
        format.json { render :show, status: :ok, location: @cnmr }
      else
        format.html { render :edit }
        format.json { render json: @cnmr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cnmrs/1
  # DELETE /cnmrs/1.json
  def destroy
    @cnmr.destroy
    respond_to do |format|
      format.html { redirect_to cnmrs_url, notice: 'Cnmr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cnmr
      @cnmr = Cnmr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cnmr_params
      params.require(:cnmr).permit(:name, :filename, :partanalysis, :solvent1, :solvent2, :sumc, :instrument, :method, :pulseprogram, :temp, :scans, :buffera, :oka, :okb, :okc, :okd, :singlepart_id, :description_id, :fulldoc_id)
    end
end
