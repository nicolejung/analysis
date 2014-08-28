class SumhsController < ApplicationController
  before_action :set_sumh, only: [:show, :edit, :update, :destroy]

  # GET /sumhs
  # GET /sumhs.json
  def index
    @sumhs = Sumh.all
  end

  # GET /sumhs/1
  # GET /sumhs/1.json
  def show
  end

  # GET /sumhs/new
  def new
    @sumh = Sumh.new
  end

  # GET /sumhs/1/edit
  def edit
  end

  # POST /sumhs
  # POST /sumhs.json
  def create
    @sumh = Sumh.new(sumh_params)

    respond_to do |format|
      if @sumh.save
        format.html { redirect_to @sumh, notice: 'Sumh was successfully created.' }
        format.json { render :show, status: :created, location: @sumh }
      else
        format.html { render :new }
        format.json { render json: @sumh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sumhs/1
  # PATCH/PUT /sumhs/1.json
  def update
    respond_to do |format|
      if @sumh.update(sumh_params)
        format.html { redirect_to @sumh, notice: 'Sumh was successfully updated.' }
        format.json { render :show, status: :ok, location: @sumh }
      else
        format.html { render :edit }
        format.json { render json: @sumh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sumhs/1
  # DELETE /sumhs/1.json
  def destroy
    @sumh.destroy
    respond_to do |format|
      format.html { redirect_to sumhs_url, notice: 'Sumh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sumh
      @sumh = Sumh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sumh_params
      params.require(:sumh).permit(:all, :value, :fill1, :fill2, :oka, :okb, :okc, :okd, :fulldoc_id, :singlepart_id, :description_id, :hnmr_id, :nmrdetailh_id, :coupling_id)
    end
end
