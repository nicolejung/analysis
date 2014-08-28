class HnmrsController < ApplicationController
  before_action :set_hnmr, only: [:show, :edit, :update, :destroy]

  # GET /hnmrs
  # GET /hnmrs.json
  def index
    if params[:singlepart].nil? then
    @hnmrs = Hnmr.all
    else
    @hnmrs = Hnmr.where(['singlepart_id = ?', params[:singlepart]])
    end

  end

  # GET /hnmrs/1
  # GET /hnmrs/1.json
  def show
  end

  # GET /hnmrs/new
  def new
    @hnmr = Hnmr.new
  end

  # GET /hnmrs/1/edit
  def edit
  end

  # POST /hnmrs
  # POST /hnmrs.json
  def create
    @hnmr = Hnmr.new(hnmr_params)

    respond_to do |format|
      if @hnmr.save
         @hnmr.formatting
         @hnmr.createsignalfromstring
        format.html { redirect_to @hnmr, notice: 'Hnmr was successfully created.' }
        format.json { render :show, status: :created, location: @hnmr }
      else
        format.html { render :new }
        format.json { render json: @hnmr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hnmrs/1
  # PATCH/PUT /hnmrs/1.json
  def update
    respond_to do |format|
      if @hnmr.update(hnmr_params)
         @hnmr.createsignalfromstring
        format.html { redirect_to @hnmr, notice: 'Hnmr was successfully updated.' }
        format.json { render :show, status: :ok, location: @hnmr }
      else
        format.html { render :edit }
        format.json { render json: @hnmr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hnmrs/1
  # DELETE /hnmrs/1.json
  def destroy
    @hnmr.destroy
    respond_to do |format|
      format.html { redirect_to hnmrs_url, notice: 'Hnmr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hnmr
      @hnmr = Hnmr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hnmr_params
      params.require(:hnmr).permit(:name, :filename, :analysis, :niceanalysis, :amounth, :method, :solvent1, :solvent2, :mhz, :temperature, :scans, :pulseprogram, :oka, :okb, :okc, :okd, :fulldoc_id, :singlepart_id, :description_id)
    end
end
