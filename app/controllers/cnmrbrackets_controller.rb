class CnmrbracketsController < ApplicationController
  before_action :set_cnmrbracket, only: [:show, :edit, :update, :destroy]

  # GET /cnmrbrackets
  # GET /cnmrbrackets.json
  def index
    @cnmrbrackets = Cnmrbracket.all
  end

  # GET /cnmrbrackets/1
  # GET /cnmrbrackets/1.json
  def show
  end

  # GET /cnmrbrackets/new
  def new
    @cnmrbracket = Cnmrbracket.new
  end

  # GET /cnmrbrackets/1/edit
  def edit
  end

  # POST /cnmrbrackets
  # POST /cnmrbrackets.json
  def create
    @cnmrbracket = Cnmrbracket.new(cnmrbracket_params)

    respond_to do |format|
      if @cnmrbracket.save
        format.html { redirect_to @cnmrbracket, notice: 'Cnmrbracket was successfully created.' }
        format.json { render :show, status: :created, location: @cnmrbracket }
      else
        format.html { render :new }
        format.json { render json: @cnmrbracket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cnmrbrackets/1
  # PATCH/PUT /cnmrbrackets/1.json
  def update
    respond_to do |format|
      if @cnmrbracket.update(cnmrbracket_params)
        format.html { redirect_to @cnmrbracket, notice: 'Cnmrbracket was successfully updated.' }
        format.json { render :show, status: :ok, location: @cnmrbracket }
      else
        format.html { render :edit }
        format.json { render json: @cnmrbracket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cnmrbrackets/1
  # DELETE /cnmrbrackets/1.json
  def destroy
    @cnmrbracket.destroy
    respond_to do |format|
      format.html { redirect_to cnmrbrackets_url, notice: 'Cnmrbracket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cnmrbracket
      @cnmrbracket = Cnmrbracket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cnmrbracket_params
      params.require(:cnmrbracket).permit(:signal, :multiplet, :amountc, :coupling, :buffera, :bufferb, :countc, :adaptc, :oka, :okb, :nmrdetailc_id, :cnmr_id, :singlepart_id, :description_id, :fulldoc_id)
    end
end
