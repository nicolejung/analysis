class NmrdetailhsController < ApplicationController
  before_action :set_nmrdetailh, only: [:show, :edit, :update, :destroy]

  # GET /nmrdetailhs
  # GET /nmrdetailhs.json
  def index
    @nmrdetailhs = Nmrdetailh.all
  end

  # GET /nmrdetailhs/1
  # GET /nmrdetailhs/1.json
  def show
  end

  # GET /nmrdetailhs/new
  def new
    @nmrdetailh = Nmrdetailh.new
  end

  # GET /nmrdetailhs/1/edit
  def edit
  end

  # POST /nmrdetailhs
  # POST /nmrdetailhs.json
  def create
    @nmrdetailh = Nmrdetailh.new(nmrdetailh_params)

    respond_to do |format|
      if @nmrdetailh.save
        format.html { redirect_to @nmrdetailh, notice: 'Nmrdetailh was successfully created.' }
        format.json { render :show, status: :created, location: @nmrdetailh }
      else
        format.html { render :new }
        format.json { render json: @nmrdetailh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nmrdetailhs/1
  # PATCH/PUT /nmrdetailhs/1.json
  def update
    respond_to do |format|
      if @nmrdetailh.update(nmrdetailh_params)
        format.html { redirect_to @nmrdetailh, notice: 'Nmrdetailh was successfully updated.' }
        format.json { render :show, status: :ok, location: @nmrdetailh }
      else
        format.html { render :edit }
        format.json { render json: @nmrdetailh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nmrdetailhs/1
  # DELETE /nmrdetailhs/1.json
  def destroy
    @nmrdetailh.destroy
    respond_to do |format|
      format.html { redirect_to nmrdetailhs_url, notice: 'Nmrdetailh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nmrdetailh
      @nmrdetailh = Nmrdetailh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nmrdetailh_params
      params.require(:nmrdetailh).permit(:signal, :area, :shift, :first, :last, :hamount, :fill1, :fill2, :oka, :okb, :okc, :okd, :fulldoc_id, :singlepart_id, :description_id, :hnmr_id)
    end
end
