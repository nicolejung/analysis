class NmrdetailcsController < ApplicationController
  before_action :set_nmrdetailc, only: [:show, :edit, :update, :destroy]

  # GET /nmrdetailcs
  # GET /nmrdetailcs.json
  def index
    @nmrdetailcs = Nmrdetailc.all
  end

  # GET /nmrdetailcs/1
  # GET /nmrdetailcs/1.json
  def show
  end

  # GET /nmrdetailcs/new
  def new
    @nmrdetailc = Nmrdetailc.new
  end

  # GET /nmrdetailcs/1/edit
  def edit
  end

  # POST /nmrdetailcs
  # POST /nmrdetailcs.json
  def create
    @nmrdetailc = Nmrdetailc.new(nmrdetailc_params)

    respond_to do |format|
      if @nmrdetailc.save
        format.html { redirect_to @nmrdetailc, notice: 'Nmrdetailc was successfully created.' }
        format.json { render :show, status: :created, location: @nmrdetailc }
      else
        format.html { render :new }
        format.json { render json: @nmrdetailc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nmrdetailcs/1
  # PATCH/PUT /nmrdetailcs/1.json
  def update
    respond_to do |format|
      if @nmrdetailc.update(nmrdetailc_params)
        format.html { redirect_to @nmrdetailc, notice: 'Nmrdetailc was successfully updated.' }
        format.json { render :show, status: :ok, location: @nmrdetailc }
      else
        format.html { render :edit }
        format.json { render json: @nmrdetailc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nmrdetailcs/1
  # DELETE /nmrdetailcs/1.json
  def destroy
    @nmrdetailc.destroy
    respond_to do |format|
      format.html { redirect_to nmrdetailcs_url, notice: 'Nmrdetailc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nmrdetailc
      @nmrdetailc = Nmrdetailc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nmrdetailc_params
      params.require(:nmrdetailc).permit(:signal, :buffer1, :buffer2, :buffer3, :oka, :okb, :cnmr_id, :singlepart_id, :description_id, :fulldoc_id)
    end
end
